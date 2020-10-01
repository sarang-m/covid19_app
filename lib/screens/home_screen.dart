import 'package:covid19/constants/constants.dart';
import 'package:covid19/utils/screen_size.dart';
import 'package:covid19/widgets/covid_status.dart';
import 'package:covid19/widgets/custom_clipper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String dropdownValue = 'India';
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    //double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical * 2,
                    left: SizeConfig.safeBlockHorizontal * 8,
                    right: SizeConfig.safeBlockHorizontal * 2),
                height: SizeConfig.safeBlockVertical * 40,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/virus.png")),
                    gradient: LinearGradient(
                        begin: Alignment.centerLeft,
                        end: Alignment.centerRight,
                        colors: [Color(0xff3383CD), Color(0xFF11249F)])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: SvgPicture.asset("assets/icons/menu.svg"),
                    ),
                    SizedBox(
                      height: SizeConfig.safeBlockVertical * 1,
                    ),
                    Expanded(
                      child: Stack(
                        children: [
                          SvgPicture.asset(
                            "assets/icons/Drcorona.svg",
                            width: 230,
                            fit: BoxFit.fitWidth,
                            alignment: Alignment.topCenter,
                          ),
                          Positioned(
                            top: SizeConfig.safeBlockVertical * 7,
                            left: SizeConfig.safeBlockHorizontal * 40,
                            child: Text(
                              "All you need \nis stay at home",
                              style: KHeadingTextStyle.copyWith(
                                  color: Colors.white),
                            ),
                          ),
                          Container()
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: SizeConfig.safeBlockVertical*7,

              width: SizeConfig.safeBlockHorizontal*85,
              decoration: BoxDecoration(
                border: Border.all(width: 2,color: Color(0xFFE5E5E5)),
                borderRadius:BorderRadius.circular(10),),
              child: Row(children: [
                SvgPicture.asset("assets/icons/maps-and-flags.svg"),
                SizedBox(width: 11,),
                Expanded(
                  child: DropdownButton<String>(
                    isExpanded: true,
                    icon: SvgPicture.asset('assets/icons/dropdown.svg'),
                    value: dropdownValue,
                    underline: SizedBox(),
                    hint: Text('Select country'),
                    items: <String>['Australia','Bangladesh','China','India','Japan','Us']
                        .map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                    }).toList(),
                    onChanged:(String newValue) {
                      setState(() {
                        dropdownValue = newValue;
                      });
                    },
                  )
                )
              ],),
            ),
            SizedBox(height: 21,),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                                text: "Case update\n",
                                style: KTitleTextStyle),
                          TextSpan(
                              text: "Newest update Aug 3",
                              style: TextStyle(color: KTextLightColor))]
                        ),
                      ),
                      Spacer(),
                      Text("See details",
                        style: TextStyle(
                            color: KPrimaryColor,
                            fontWeight: FontWeight.w600),)
                    ],
                  ),
                  SizedBox(height: 20,),
                  Container(
                    padding: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        offset: Offset(0,4),
                        blurRadius: 30,
                        color: KShadowColor
                      ),],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CovidStatus(iconColor: KInfectedColor,
                          covidNumber: "1014",statusText: "Infected",),
                        CovidStatus(iconColor: KDeathColor,
                          covidNumber: 12,statusText: "Death",),
                        CovidStatus(iconColor: KRecoverColor,covidNumber: "213",
                          statusText: "Recovered",)
                      ],
                    ),
                  ),
                  SizedBox(height: 2,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("Spread of virus",style: KTitleTextStyle,),
                    ],
                  ),
                  SizedBox(height: SizeConfig.safeBlockVertical*.5,),
                  Container(
                    padding: EdgeInsets.all(5),
                    height: SizeConfig.safeBlockVertical*17,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white,
                      boxShadow: [BoxShadow(
                        offset: Offset(0,10),
                        blurRadius: 30,
                        color: KShadowColor
                      )]
                    ),
                    child: Image.asset("assets/images/map.png",
                      fit: BoxFit.contain,),

                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}


