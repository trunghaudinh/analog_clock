import 'package:analog_clock/core/constants/size_config.dart';
import 'package:flutter/material.dart';

class AlarmPage extends StatelessWidget {
  const AlarmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          width: SizeConfig.screenWidth,
          child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Ho Chi Minh, VietNam",style: Theme.of(context).textTheme.bodyText1,),
      ],
    ),
        ));
  }

  Widget _buildTime(context){
    return Row()
  }
}
