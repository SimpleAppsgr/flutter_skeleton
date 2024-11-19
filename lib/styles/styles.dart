import 'package:flutter/services.dart';
import 'package:flutter_skeleton/commons.dart';

///Fonts used in the app. A const is used to avoid String typos
class Font {
  static const montserrat = 'Montserrat';
}

///Styles used for Text around the app
const activityLikes =
    TextStyle(color: MyColors.grey, fontWeight: FontWeight.w700, fontSize: 13);

const activityDate =
    TextStyle(color: MyColors.black, fontWeight: FontWeight.w600, fontSize: 11);

const userCardPoints =
    TextStyle(color: Colors.white, fontWeight: FontWeight.w600, fontSize: 20);

///System styles
const kStatusBarLight = SystemUiOverlayStyle(
  statusBarIconBrightness: Brightness.dark,
  statusBarBrightness: Brightness.dark,
);
const kStatusBarDark = SystemUiOverlayStyle(
  statusBarIconBrightness: Brightness.light,
  statusBarBrightness: Brightness.light,
);
