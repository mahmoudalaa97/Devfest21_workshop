import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/counter_screen/counter_screen.dart';
import 'package:flutter_application_1/modules/home_screen/home_screen.dart';

class AppRouter {
  /// Here you write the name of route and the screen
  /// make sure you add the route start with '/'
  /// after that you add the case in the switch
  /// example:
  /// ```
  ///   static const String homeScreen = "/home";
  ///
  ///    case homeScreen:
  ///      return MaterialPageRoute(
  ///     builder: (context) => HomeScreen(),
  /// ```
  static const String homeScreen = "/home";
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
            builder: (context) => CounterScreen(
                  title: "Counter Screen",
                ));
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen(),
        );
      default:
        // Here you can throw the error when the route is not correct.
        return throw ('Route not found!');
    }
  }
}
