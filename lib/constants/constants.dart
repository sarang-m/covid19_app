import 'package:covid19/utils/screen_size.dart';
import 'package:flutter/material.dart' ;

//colors
const KBackgroundColor = Color(0xFFFEFEFE);
const KTitleTextColor = Color(0xFF303030);
const KBodyTextColor = Color(0xFF4B4B4B);
const KTextLightColor = Color(0xFF959595);
const KInfectedColor = Color(0xFFFF8748);
const KDeathColor = Color(0xFFFF4838);
const KRecoverColor = Color(0xFF36C12C);
const KPrimaryColor = Color(0xFF3382CC);
final KShadowColor = Color(0xFFB7B7B7).withOpacity(.16);
final KActiveShadowColor = Color(0xFF4056C6).withOpacity(15);

//Text Style
final KHeadingTextStyle = TextStyle(
    fontSize:SizeConfig.safeBlockHorizontal*5,
    fontWeight: FontWeight.w600);

const KSubTextStyle = TextStyle(
    fontSize: 16,
    color: KTextLightColor);

const KTitleTextStyle = TextStyle(
    fontSize: 18,
    color: KTitleTextColor,
    fontWeight: FontWeight.bold);