import 'package:analog_clock/core/config/routes/route_name.dart';
import 'package:analog_clock/presentation/app.dart';
import 'package:analog_clock/presentation/pages/alarm/alarm_page.dart';
import 'package:flutter/material.dart';

class Routers {
  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteName.alarmPage:
        {
          return MaterialPageRoute(builder: (_) => const AlarmPage());
        }
      case RouteName.appPage:
        {
          return MaterialPageRoute(builder: (_) => const AppPage());
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
