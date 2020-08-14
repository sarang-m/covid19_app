import 'package:covid19/constants/constants.dart';
import 'package:covid19/utils/screen_size.dart';
import 'package:covid19/widgets/custom_clipper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child:Scaffold(
        body: Column(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                padding: EdgeInsets.only(
                    top: SizeConfig.safeBlockVertical*7,
                    left: SizeConfig.safeBlockHorizontal*4),
                height: SizeConfig.safeBlockVertical*40,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [Color(0xFF3383CD),Color(0xFF11249F)],
                  ),
                  image: DecorationImage(image: AssetImage("assets/images/virus.png"))
                ),
                child: Expanded(
                  child: Stack(
                    children: [
                      SvgPicture.asset("assets/icons/Drcorona.svg",
                        fit: BoxFit.fitWidth,
                      alignment: Alignment.topCenter,),
                      Positioned(
                        left: SizeConfig.safeBlockHorizontal*35,
                        top: SizeConfig.blockSizeVertical*5,
                        child: Text("All you need\nis stay at home",
                          style: KHeadingTextStyle.copyWith(
                              color: Colors.white)),
                      )
                    ],),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}



