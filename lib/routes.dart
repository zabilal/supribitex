import 'package:flutter/widgets.dart';
import 'package:supribitex/screens/splash/splash_screen.dart';
import 'package:supribitex/web_container.dart';
// import 'screens/home/home_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreens.routeName: (context) => SplashScreens(),
  WebContainer.routeName: (context) => WebContainer(),
};
