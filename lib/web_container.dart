import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebContainer extends StatefulWidget {
  static String routeName = "/web";

  @override
  _WebContainer createState() => _WebContainer();
}

class _WebContainer extends State<WebContainer> {
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  final kAndroidUserAgent =
      'Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/62.0.3202.94 Mobile Safari/537.36';

  String selectedUrl = 'https://mobile.supribitex.app';

// ignore: prefer_collection_literals
  final Set<JavascriptChannel> jsChannels = [
    JavascriptChannel(
        name: 'Print',
        onMessageReceived: (JavascriptMessage message) {
          print(message.message);
        }),
  ].toSet();

  StreamSubscription _onDestroy;

  StreamSubscription<String> _onUrlChanged;

  StreamSubscription<WebViewStateChanged> _onStateChanged;

  StreamSubscription<WebViewHttpError> _onHttpError;

  StreamSubscription<double> _onProgressChanged;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  final _history = [];

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

            
            .container {
                position: absolute;
                top: 50%;
                left: 50%;
                text-align:center;
                -moz-transform: translateX(-50%) translateY(-50%);
                -webkit-transform: translateX(-50%) translateY(-50%);
                transform: translateX(-50%) translateY(-50%);
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
        <div class="container">
            <a href=$url rel="noopener noreferrer">
                <span>NO Internet, Click to Refresh</span>
                <!--<img src=$img height="100px" width="100px"> -->
            </a>        
        </div>
    </body>
    </html>""";
  }

  @override
  void initState() {
    super.initState();

    flutterWebViewPlugin.close();

    // Add a listener to on destroy WebView, so you can make came actions.
    _onDestroy = flutterWebViewPlugin.onDestroy.listen((_) {
      if (mounted) {
        // Actions like show a info toast.
        _scaffoldKey.currentState.showSnackBar(
            const SnackBar(content: const Text('Webview Destroyed')));
      }
    });

    // Add a listener to on url changed
    _onUrlChanged = flutterWebViewPlugin.onUrlChanged.listen((String url) {
      if (mounted) {
        print('============================= onUrlChanged: $url');
        setState(() {
          _history.add('onUrlChanged: $url');
        });
      }
    });

    _onProgressChanged =
        flutterWebViewPlugin.onProgressChanged.listen((double progress) {
      if (mounted) {
        print('=========================== onProgressChanged: $progress');
        setState(() {
          _history.add('onProgressChanged: $progress');
        });
      }
    });

    _onStateChanged =
        flutterWebViewPlugin.onStateChanged.listen((WebViewStateChanged state) {
      if (mounted) {
        print('=============== onStateChanged: ${state.type} ${state.url}');
        setState(() {
          _history.add('onStateChanged: ${state.type} ${state.url}');
        });
      }
    });

    _onHttpError =
        flutterWebViewPlugin.onHttpError.listen((WebViewHttpError error) {
      if (mounted) {
        print(" ============== WEB ERROR ENCOUNTERED ====================");
        flutterWebViewPlugin.reloadUrl(
            Uri.dataFromString(getErrorPage(error.url), mimeType: 'text/html')
                .toString());
        // flutterWebViewPlugin.reloadUrl(error.url);
        setState(() {
          _history.add('onHttpError: ${error.code} ${error.url}');
        });
      }
    });
  }

  @override
  void dispose() {
    // Every listener should be canceled, the same should be done with this stream.
    _onDestroy.cancel();
    _onUrlChanged.cancel();
    _onStateChanged.cancel();
    _onHttpError.cancel();
    _onProgressChanged.cancel();

    flutterWebViewPlugin.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter WebView Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (_) {
          return WebviewScaffold(
            url: selectedUrl,
            javascriptChannels: jsChannels,
            mediaPlaybackRequiresUserGesture: false,
            withZoom: true,
            withLocalStorage: true,
            withLocalUrl: true,
            hidden: true,
            initialChild: Container(
              color: Colors.blue,
              child: const Center(
                child: Text('Supribitex.....loading', style: TextStyle(fontSize: 30),),
              ),
            ),
          );
        },
      },
    );
  }

  // getErrorPage(String url) {
  //   String img = "./assets/images/refresh.png";

  //   return """<!DOCTYPE html>
  //   <html lang="en">
  //   <head>
  //       <meta charset="UTF-8">
  //       <meta http-equiv="X-UA-Compatible" content="IE=edge">
  //       <meta name="viewport" content="width=device-width, initial-scale=1.0">
  //       <title>Supribitex</title>
  //       <style>
  //           body {
  //               background-color: aqua;
  //           }

  //           .container {
  //               position: absolute;
  //               top: 50%;
  //               left: 50%;
  //               -moz-transform: translateX(-50%) translateY(-50%);
  //               -webkit-transform: translateX(-50%) translateY(-50%);
  //               transform: translateX(-50%) translateY(-50%);
  //           }

  //           img p {
  //               position: absolute;
  //               top: 50%;
  //               left: 50%;
  //               transform: translate(-50%, -50%);
  //               }
  //       </style>
  //   </head>
  //   <body>
  //       <div class="container">
  //           <a href=$url rel="noopener noreferrer">
  //               <span>NO Internet, Click to Refresh</span>
  //               <!--<img src=$img height="100px" width="100px"> -->
  //           </a>
  //       </div>
  //   </body>
  //   </html>""";
  // }

  // WebViewController _controller;
  // // bool connectionStatus = false;

  // StreamSubscription connectivitySubscription;

  // ConnectivityResult _previousResult;
  // bool connectionStatus = false;

  // final Completer<WebViewController> _controllerCompleter =
  //     Completer<WebViewController>();

  // Future<bool> _onWillPop(BuildContext context) async {
  //   if (await _controller.canGoBack()) {
  //     _controller.goBack();
  //     return Future.value(false);
  //   } else {
  //     return Future.value(true);
  //   }
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   // if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();

  //   connectivitySubscription = Connectivity()
  //       .onConnectivityChanged
  //       .listen((ConnectivityResult connectivityResult) {
  //     if (connectivityResult == ConnectivityResult.none) {
  //       //no connection
  //       connectionStatus = false;
  //     } else if (_previousResult != ConnectivityResult.none) {
  //       connectionStatus = true;
  //     }

  //     _previousResult = connectivityResult;
  //   });
  // }

  // @override
  // void dispose() {
  //   super.dispose();

  //   connectivitySubscription.cancel();
  // }

  // Future check() async {
  //   try {
  //     final result = await InternetAddress.lookup('google.com');
  //     if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
  //       connectionStatus = true;
  //       print("connected $connectionStatus");
  //     }
  //   } on SocketException catch (_) {
  //     connectionStatus = false;
  //     print("not connected $connectionStatus");
  //   }
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return WillPopScope(
  //     onWillPop: () => _onWillPop(context),
  //     child: Scaffold(
  //       body: SafeArea(
  //           child: WebView(
  //         key: UniqueKey(),
  //         onWebViewCreated: (WebViewController webViewController) {
  //           _controllerCompleter.future.then((value) => _controller = value);
  //           _controllerCompleter.complete(webViewController);

  //           // if (_previousResult != ConnectivityResult.none) {
  //           if (connectionStatus == true) {
  //             webViewController.loadUrl("https://mobile.supribitex.app/");
  //           } else {
  //             webViewController
  //                 .loadUrl(getErrorPage("https://mobile.supribitex.app/"));

  //             // webViewController.loadUrl("https://mobile.supribitex.app/");
  //           }

  //         },
  //         onWebResourceError: (failed) async {
  //           String url = await this._controller.currentUrl();
  //           this._controller.loadUrl(
  //               Uri.dataFromString(getErrorPage(url), mimeType: 'text/html')
  //                   .toString());
  //           // this._controller.loadUrl(url);
  //         },
  //         javascriptMode: JavascriptMode.unrestricted,
  //         // initialUrl: "https://mobile.supribitex.app",
  //         gestureNavigationEnabled: true,
  //         navigationDelegate: (NavigationRequest request) async {
  //           if (connectionStatus == true) {
  //             print('allowing navigation to $request');
  //             return NavigationDecision.navigate;
  //           }
  //           else {
  //             print('blocking navigation to $request');
  //             String url = await this._controller.currentUrl();
  //             this._controller.loadUrl(
  //                 Uri.dataFromString(getErrorPage(url), mimeType: 'text/html')
  //                     .toString());
  //             // return NavigationDecision.prevent;
  //           }
  //           return NavigationDecision.navigate;
  //         },
  //       )),
  //     ),
  //   );
  // }

}
