import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'core/config/routes/route_name.dart';
import 'core/config/routes/router.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: RouteName.alarmPage,
      onGenerateRoute: Routers.onGenerateRoute,
    );
  }
}
