import 'package:covid19/constants/constants.dart';
import 'package:covid19/utils/screen_size.dart';
import 'package:flutter/material.dart';

class CovidStatus extends StatelessWidget {
  final iconColor;
  final covidNumber;
  final statusText;

  CovidStatus({@required this.iconColor,
    @required this.covidNumber,@required this.statusText});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(6),
          height: SizeConfig.safeBlockVertical*3,
          width: SizeConfig.safeBlockHorizontal*8,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: iconColor.withOpacity(.26)
          ),
          child: Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.transparent,
                border: Border.all(
                    color: iconColor,
                    width: 2
                )
            ),
          ),
        ),
        SizedBox(height: SizeConfig.safeBlockHorizontal*1,),
        Text("$covidNumber",style: TextStyle(
            fontSize: SizeConfig.safeBlockHorizontal*8,
            color: iconColor
        ),),
        Text("$statusText",style: KSubTextStyle,)
      ],
    );
  }
}