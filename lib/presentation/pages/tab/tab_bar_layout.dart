import 'package:analog_clock/presentation/pages/alarm/alarm_page.dart';
import 'package:analog_clock/presentation/pages/bed_time/bed_time_page.dart';
import 'package:analog_clock/presentation/pages/count_down/count_down_page.dart';
import 'package:analog_clock/presentation/pages/global/global_page.dart';
import 'package:flutter/material.dart';

class TabBarLayout extends StatefulWidget {
  const TabBarLayout({Key? key}) : super(key: key);

  @override
  _TabBarLayoutState createState() => _TabBarLayoutState();
}

class _TabBarLayoutState extends State<TabBarLayout>
with SingleTickerProviderStateMixin{
  late TabController _tabController;
  var _pages = [
    AlarmPage(),
    GlobalPage(),
    BedTimePage(),
    Stopwatch(),
    CountDownPage()
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _pages.length, vsync: this,initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
