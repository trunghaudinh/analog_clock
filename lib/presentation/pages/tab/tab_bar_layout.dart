import 'package:analog_clock/core/constants/app_constants.dart';
import 'package:analog_clock/core/constants/size_config.dart';
import 'package:analog_clock/presentation/pages/alarm/alarm_page.dart';
import 'package:analog_clock/presentation/pages/bed_time/bed_time_page.dart';
import 'package:analog_clock/presentation/pages/count_down/count_down_page.dart';
import 'package:analog_clock/presentation/pages/global/global_page.dart';
import 'package:analog_clock/presentation/pages/stopwatch/stopwatch_page.dart';
import 'package:flutter/material.dart';

class TabBarLayout extends StatefulWidget {
  const TabBarLayout({Key? key}) : super(key: key);

  @override
  _TabBarLayoutState createState() => _TabBarLayoutState();
}

class _TabBarLayoutState extends State<TabBarLayout>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  var _pages = [
    const AlarmPage(),
    const GlobalPage(),
    const BedTimePage(),
    const StopWatchPage(),
    const CountDownPage()
  ];

  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: _pages.length, vsync: this, initialIndex: 0);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: height / 20.0,
          ),
          _buildToolbar(context),
          const SizedBox(height: 16.0),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: _pages.map((Widget tab) {
                return tab;
              }).toList(),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildToolbar(context) {
    return TabBar(
      tabs: [
        Tab(
            icon: Icon(
          Icons.alarm,
          size: width / 15.0,
        )),
        Tab(
            icon: Icon(
          Icons.watch_later_outlined,
          size: width / 15.0,
        )),
        Tab(
            icon: Icon(
          Icons.king_bed_outlined,
          size: width / 15.0,
        )),
        Tab(
            icon: Icon(
          Icons.king_bed_outlined,
          size: width / 15.0,
        )),
        Tab(
            icon: Icon(
          Icons.hourglass_empty_sharp,
          size: width / 15.0,
        )),
      ],
      controller: _tabController,
      labelColor: Theme.of(context).primaryColor,
      indicatorColor: Colors.transparent,
      unselectedLabelColor: Theme.of(context).iconTheme.color,
      indicatorSize: TabBarIndicatorSize.tab,
      indicatorWeight: .1,
      labelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: width / 14.0,
        fontFamily: 'Raleway-Bold',
      ),
      unselectedLabelStyle: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: width / 14.0,
        fontFamily: 'Raleway-Bold',
      ),
    );
  }
}
