import 'package:flutter/material.dart';

///
/// Solid color system
/// consists of solid colors, without transparency
///
/// used for main solid colors
const Color appcolor = Colors.teal;
const PrimaryColor = const Color(0xff3fdfa3);
const primaryColor = const Color(0xFF1a8e81);
const PrimaryDarkColor = const Color(0xff3FD59D);
const AccentColor = const Color(0xff62e1fc);
const SecondaryColor = const Color(0xfff34d77);
const seconadryColor = Color(0xFFE4FFFA);
const DisableColor = const Color(0xff7bf6c8);
const SuccessColor = const Color(0xff24b746);
const SuccessLightColor = const Color(0xffe6f4e9);
const WarningColor = const Color(0xffff8212);
const WarningLightColor = const Color(0xffffecdc);
const InfoColor = const Color(0xff3eacfc);
const InfoLightColor = const Color(0xffe8f0fd);
const DangerColor = const Color(0xffff2323);
const DangerLightColor = const Color(0xfffce8e6);
const White = const Color(0xffffffff);
const LightGray = const Color(0xffefefef);
const Gray = const Color(0xffc2c7cf);
const Black = const Color(0xff000000);
const DarkGray = const Color(0xff9F9F9F);
const Transpanent = const Color(0x1AFFFFFF);
const FacebookColor = const Color(0xFF1778F2);
const GoogleColor = const Color(0xffff2323);
const BlueColor = const Color(0xff3782F2);
const LightGradient = const Color(0xff60E3E3);
const DarkGradient = const Color(0xff008080);
const ButtonPrimary = const Color(0xFF00AA88);
const GeoColor = const Color(0xFF4CB56C);
const buttoncolor = Colors.orangeAccent;
const Color OnboardingtextBack = const Color(0xFF059669);
const splashcolor = const Color(0xFFB2DFDB);
const textcolor = Colors.black54;

class Palette {
  static const MaterialColor PrimarySwatch = const MaterialColor(
    0xFF00AA88, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xFF00AA88), //10%
      100: const Color(0xFF00AA88), //20%
      200: const Color(0xFF00AA88), //30%
      300: const Color(0xFF00AA88), //40%
      400: const Color(0xFF00AA88), //50%
      500: const Color(0xFF00AA88), //60%
      600: const Color(0xFF00AA88), //70%
      700: const Color(0xFF00AA88), //80%
      800: const Color(0xFF00AA88), //90%
      900: const Color(0xFF00AA88), //100%
    },
  );
}

class EmployeeIconColor {
  static const MaterialColor PrimarySwatch = const MaterialColor(
    0xFF00AA88, // 0% comes in here, this will be color picked if no shade is selected when defining a Color property which doesn’t require a swatch.
    const <int, Color>{
      50: const Color(0xFF00AA88), //10%
      100: const Color(0xFF00AA88), //20%
      200: const Color(0xFF00AA88), //30%
      300: const Color(0xFF00AA88), //40%
      400: const Color(0xFF00AA88), //50%
      500: const Color(0xFF00AA88), //60%
      600: const Color(0xFF00AA88), //70%
      700: const Color(0xFF00AA88), //80%
      800: const Color(0xFF00AA88), //90%
      900: const Color(0xFF00AA88), //100%
    },
  );
}

// addon colors
const LeaveColor = const Color(0xFFFFF4D4);
const GroupAttColor = const Color(0xFFFFDED4);
const TimeOffColor = const Color(0xFFFFEDFD);
const ShiftColor = const Color(0xFFD8FFE3);
const VisitColor = const Color(0xFFD4E8FF);
const RecommondedGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 0.0),
  colors: [
    Color(0xFF457DCF),
    Color(0xFFCE3DAE),
  ],
);

///
/// Alpha color system
/// consists of light colors, with transparency
///
/// generally used for shadows
const PrimaryDarkShadow = const Color.fromRGBO(200, 200, 200, 0.5);
const CardShadow = const Color.fromRGBO(180, 180, 180, 0.5);
const WarningShadow = const Color.fromRGBO(255, 130, 18, 0.45);
const SuccessShadow = const Color.fromRGBO(74, 167, 64, 0.45);
const DangerShadow = const Color.fromRGBO(246, 74, 74, 0.45);
const InfoShadow = const Color.fromRGBO(62, 172, 252, 0.45);

// Language Card Color

const LanguageEnglishColor = const LinearGradient(
  colors: [
    Color(0xFF00AEFF),
    Color(0xFF00AEFF),
  ],
);
const LanguageSpanishColor = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 0.0),
  colors: [
    Color(0xFFEF9D66),
    Color(0xFFEF9D66),
  ],
);

const LanguageBanglaColor = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 0.0),
  colors: [
    Color(0xFFE8DA5E),
    Color(0xFFE8DA5E),
  ],
);
const LanguageHindiColor = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 0.0),
  colors: [
    Color(0xFF6B6B6B),
    Color(0xFF6B6B6B),
  ],
);
const LanguageArabicColor = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 0.0),
  colors: [
    Color(0xFF5EE8B9),
    Color(0xFF5EE8B9),
  ],
);
const LanguageMarathiColor = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 0.0),
  colors: [
    Color(0xFFC38CF3),
    Color(0xFFC38CF3),
  ],
);

const LanguageCardClickedStart = const Color(0x52000000);
const LanguageCardClickedEnd = const Color(0x52545454);

const LanguageCardGradient = const LinearGradient(
  begin: Alignment.topLeft,
  end: Alignment(0.8, 0.0), // 10% of the width, so there are ten blinds.
  colors: [
    LanguageCardClickedStart,
    LanguageCardClickedEnd,
  ], // red to yellow
  tileMode: TileMode.repeated, // repeats the gradient over the canvas
);

const EmployeeCardColor = const RadialGradient(
  tileMode: TileMode.mirror,
  center: Alignment(0.65, -2.0),
  radius: 7.25,
  colors: [
    const Color(0xFFFCFCFC),
    const Color(0xFFFCFCFC),
    const Color(0xfff4f4f4),
    const Color(0xfffafafa),
    const Color(0xfff4f4f4),
  ],
  stops: [0.0, 0.218, 0.221, 0.317, 0.322],


);
