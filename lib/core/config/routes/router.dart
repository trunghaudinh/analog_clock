import 'package:analog_clock/core/config/routes/route_name.dart';
import 'package:analog_clock/presentation/modules/home_page.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.homePage:
        {
          return MaterialPageRoute(builder: (_) => HomePage());
        }
      default:
        return MaterialPageRoute(
            builder: (_) => const Scaffold(
                  body: Center(
                    child: Text("No routes match"),
                  ),
                ));
    }
  }
}
