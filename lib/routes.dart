import 'package:flutter/widgets.dart';
import 'package:supribitex/screens/splash/onboarding_screen.dart';
import 'package:supribitex/web_container.dart';
// import 'screens/home/home_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  OnboardingScreen.routeName: (context) => OnboardingScreen(),
  WebContainer.routeName: (context) => WebContainer(),
};
