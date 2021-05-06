import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flushbar/flushbar.dart';

class WebContainer extends StatefulWidget {
  static String routeName = "/web";

  @override
  _WebContainer createState() => _WebContainer();
}

class _WebContainer extends State<WebContainer> {


  getErrorPage(String url) {
    String img = "./assets/images/refresh.png";

    return """<!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Supribitex</title>
        <style>
            body {
                background-color: aqua;
            }

            div {
                position: relative;
                height: 800px;

            }

            img p {
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%, -50%);
                }
        </style>
    </head>
    <body>
        <div>
            <p>Click here to Refresh the App</p>
            <a href=$url rel="noopener noreferrer">
                <img src=$img height="100px" width="100px">
            </a>        
        </div>
    </body>
    </html>""";
  }

  WebViewController _controller;
  // bool connectionStatus = false;

  StreamSubscription connectivitySubscription;

  ConnectivityResult _previousResult;
  bool connectionStatus = false;

  final Completer<WebViewController> _controllerCompleter =
      Completer<WebViewController>();

  Future<bool> _onWillPop(BuildContext context) async {
    if (await _controller.canGoBack()) {
      _controller.goBack();
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }

  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

    connectivitySubscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult connectivityResult) {
      if (connectivityResult == ConnectivityResult.none) {
        //no connection
        connectionStatus = false;
        // nav.currentState.push(MaterialPageRoute(
        //     builder: (BuildContext _) => Container(
        //           child: Text(connectionStatus.toString()),
        //         )));
      } else if (_previousResult == ConnectivityResult.none) {
        connectionStatus = true;
        // nav.currentState.push(MaterialPageRoute(
        //     builder: (BuildContext _) => Container(
        //           child: Text(connectionStatus.toString()),
        //         )));
      }

      _previousResult = connectivityResult;
    });
  }

  @override
  void dispose() {
    super.dispose();

    connectivitySubscription.cancel();
  }

  Future check() async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        connectionStatus = true;
        print("connected $connectionStatus");
      }
    } on SocketException catch (_) {
      connectionStatus = false;
      print("not connected $connectionStatus");
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        body: SafeArea(
            child: WebView(
          key: UniqueKey(),
          onWebViewCreated: (WebViewController webViewController) {
            _controllerCompleter.future.then((value) => _controller = value);
            _controllerCompleter.complete(webViewController);
            
          },
          onWebResourceError: (failed) async {
            String url = await this._controller.currentUrl();
            this._controller.loadUrl(
                Uri.dataFromString(getErrorPage(url), mimeType: 'text/html')
                    .toString());
            this._controller.reload();
          },
          javascriptMode: JavascriptMode.unrestricted,
          initialUrl: "https://mobile.supribitex.app",
          gestureNavigationEnabled: true,
          navigationDelegate: (NavigationRequest request) {
            if (connectionStatus == true) {
              print('allowing navigation to $request');
              return NavigationDecision.navigate;
            } else {
              print('blocking navigation to $request');
              return NavigationDecision.prevent;
            }
          },
        )),
      ),
    );
  }

  void showFloatingFlushbar(BuildContext context) {
    Flushbar(
      padding: EdgeInsets.all(10),
      borderRadius: 8,
      backgroundGradient: LinearGradient(
        colors: [Colors.green.shade800, Colors.greenAccent.shade700],
        stops: [0.6, 1],
      ),
      boxShadows: [
        BoxShadow(
          color: Colors.black45,
          offset: Offset(3, 3),
          blurRadius: 3,
        ),
      ],
      // All of the previous Flushbars could be dismissed by swiping down
      // now we want to swipe to the sides
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      // The default curve is Curves.easeOut
      forwardAnimationCurve: Curves.fastLinearToSlowEaseIn,
      title: 'No Internet',
      message: 'Check your Network Connection',
    )..show(context);
  }
}

// if (request.url.startsWith("https://mobile.supribitex.app")) {
//   var result = await (Connectivity().checkConnectivity());
//   if (result == ConnectivityResult.none) {
//     ScaffoldMessenger.of(context).showSnackBar(
//       SnackBar(
//           content: Text(
//               "No internet, You are not connected to the internet")),
//     );
//     _showDialog(
//         "No internet", "You are not connected to the internet");
// return NavigationDecision.navigate;
//   }
// }

      // child: FutureBuilder(
      //     future: check(), // a previously-obtained Future or null
      //     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      //       if (connectionStatus == true) {
      //         //if Internet is connected
      //         return SafeArea(
      //             child: WebView(
      //                 initialUrl: Uri.dataFromString(
      //                         '<html><body>hello world</body></html>',
      //                         mimeType: 'text/html')
      //                     .toString()));

      //       } else {
      //         //If internet is not connected
      //         return SafeArea(
      //             child:
      //                 WebView(initialUrl: "https://mobile.supribitex.app"));
      //       }
      //     })


      // if (connectionStatus == true) {
            //   webViewController.loadUrl("https://mobile.supribitex.app");
            // } else {
            //   showFloatingFlushbar(context);
            //     this._controller.loadUrl(Uri.dataFromString(
            //                       '<html><body>hello world</body></html>',
            //                       mimeType: 'text/html')
            //                   .toString());
            //   // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            //   //     content: Text(
            //   //         "No Internet, You are not Connected to the Internet")));
            //   // webViewController.reload();
            // }