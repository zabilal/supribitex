import 'dart:async';

import 'package:achievement_view/achievement_view.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:open_whatsapp/open_whatsapp.dart';
import 'package:supribitex/app/modules/Login/views/login_screen.dart';
import 'package:url_launcher/url_launcher.dart';

import 'app/modules/Login/views/login_view.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  void show() {
    AchievementView(
      this.context,
      title: "Yeaaah!",
      subTitle: "Please check your internet connection ",
      isCircle: true,
      listener: print,
    ).show();
  }

  StreamSubscription? connection;
  bool isoffline = false;

  bool _hasCallSupport = false;
  Future<void>? _launched;
  String _phone = '';

  @override
  void initState() {
    connection = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      // whenevery connection status is changed.
      if (result == ConnectivityResult.none) {
        //there is no any connection
        setState(() {
          isoffline = true;
        });
        show();
      } else if (result == ConnectivityResult.mobile) {
        //connection is mobile data network
        setState(() {
          isoffline = false;
        });
      } else if (result == ConnectivityResult.wifi) {
        //connection is from wifi
        setState(() {
          isoffline = false;
        });
      } else if (result == ConnectivityResult.ethernet) {
        //connection is from wired connection
        setState(() {
          isoffline = false;
        });
      } else if (result == ConnectivityResult.bluetooth) {
        //connection is from bluetooth threatening
        setState(() {
          isoffline = false;
        });
      }
    });
    super.initState();
    // Check for phone call support.
    canLaunchUrl(Uri(scheme: 'tel', path: '123')).then((bool result) {
      setState(() {
        _hasCallSupport = result;
      });
    });
  }

  @override
  void dispose() {
    connection!.cancel();
    super.dispose();
  }

  final Uri policyurl = Uri.parse('https://supribitex.com/privacy-policy/');
  final Uri tandc = Uri.parse('https://supribitex.com/terms-and-conditions-2/');
  final Uri signup = Uri.parse('https://mobile.supribitex.app/register');

  Future<void> _launchInBrowser(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.externalApplication,
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewOrVC(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(
          headers: <String, String>{'my_header_key': 'my_header_value'}),
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithoutJavaScript(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableJavaScript: false),
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInWebViewWithoutDomStorage(Uri url) async {
    if (!await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
      webViewConfiguration: const WebViewConfiguration(enableDomStorage: false),
    )) {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchUniversalLinkIos(Uri url) async {
    final bool nativeAppLaunchSucceeded = await launchUrl(
      url,
      mode: LaunchMode.externalNonBrowserApplication,
    );
    if (!nativeAppLaunchSucceeded) {
      await launchUrl(
        url,
        mode: LaunchMode.inAppWebView,
      );
    }
  }

  Widget _launchStatus(BuildContext context, AsyncSnapshot<void> snapshot) {
    if (snapshot.hasError) {
      return Text('Error: ${snapshot.error}');
    } else {
      return const Text('');
    }
  }

  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launchUrl(launchUri);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/welcome.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.only(left: 0, right: 0),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 0.0),
            child: Container(
              height: 90,
              child: ListView(
                // This next line does the trick.
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  InkWell(
                    onTap: () {
                      _launched = _launchInWebViewOrVC(tandc);
                    },
                    child: Container(
                      color: Colors.black12,
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Iconsax.notification,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "T and C",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      _launched = _launchInWebViewOrVC(policyurl);
                    },
                    child: Container(
                      color: Colors.black12,
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Iconsax.info_circle,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Policy",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      // _launched = _launchInWebViewOrVC(signup);
                      
                      // Get.to(() => const LoginView());
                      Get.to(() => const LoginScreen());
                    },
                    child: Container(
                      color: Colors.cyan,
                      height: 100,
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: const [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Icon(
                                Iconsax.forward,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                "Get Started",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          FlutterOpenWhatsapp.sendSingleMessage("2347069512932", "Hello");
        },
        backgroundColor: Colors.blue,
        tooltip: 'Capture Picture',
        elevation: 5,
        splashColor: Colors.grey,
        child: const Icon(
          Iconsax.message_question,
          color: Colors.white,
          size: 29,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
