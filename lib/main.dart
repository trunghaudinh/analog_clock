
import 'package:flutter/material.dart';

import 'core/config/routes/route_name.dart';
import 'core/config/routes/router.dart';
import 'core/config/themes/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.appPage,
      onGenerateRoute: Routers.onGenerateRoute,
      theme: Themes().lightTheme,
      darkTheme: Themes().darkTheme,
    );
  }
}
