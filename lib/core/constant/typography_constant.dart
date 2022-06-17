import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'colors_constant.dart';
class AppFontWeight {
  static const FontWeight fontBlack = FontWeight.w900;
  static const FontWeight fontExtraBold = FontWeight.w800;
  static const FontWeight fontBold = FontWeight.w700;
  static const FontWeight fontSemiBold = FontWeight.w600;
  static const FontWeight fontRegular = FontWeight.w500;
  static const FontWeight fontLight = FontWeight.w300;
}

class AppTextStyle {
  static TextStyle appTitle = GoogleFonts.nunitoSans(
    color: Black,
    fontWeight: AppFontWeight.fontBlack,
  );
  static TextStyle buttonTitle = GoogleFonts.nunitoSans(
    color: White,
    fontWeight: AppFontWeight.fontBold,
  );
  static TextStyle buttonTitlecolor = GoogleFonts.nunitoSans(
    color: primaryColor,
    fontWeight: AppFontWeight.fontBold,
  );
  static TextStyle textWithPrimary = GoogleFonts.nunitoSans(
    color: primaryColor,
    fontWeight: AppFontWeight.fontBold,
    fontSize: 16,
  );
  static TextStyle textFieldText = GoogleFonts.nunitoSans(
    color: DarkGray,
    fontWeight: AppFontWeight.fontRegular,
    fontSize: 14,
  );
  static TextStyle hindtextFieldText = GoogleFonts.nunitoSans(
    color: DarkGray,
    fontWeight: AppFontWeight.fontRegular,
    fontSize: 14,


  );

  // Dayitava Works Start

  static TextStyle appTitlePrimary = GoogleFonts.nunitoSans(
    color: White,
    fontWeight: AppFontWeight.fontBold,
  );
  static TextStyle tabBarText = GoogleFonts.nunitoSans(
    fontSize: 14,
    fontWeight: AppFontWeight.fontBold,
  );
  static TextStyle myAddonsText = GoogleFonts.nunitoSans(
    fontSize: 16,
    fontWeight: AppFontWeight.fontExtraBold,
  );
  static TextStyle recommondedText = GoogleFonts.nunitoSans(
    color: White,
    fontWeight: AppFontWeight.fontBold,
    letterSpacing: 0.2,
  );
  static TextStyle learnMoreText = GoogleFonts.nunitoSans(
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    fontSize: 15.0,
    decoration: TextDecoration.underline,
    color: ButtonPrimary,
  );
  static TextStyle primaryButtonText = GoogleFonts.nunitoSans(
    fontWeight: AppFontWeight.fontBold,
    fontStyle: FontStyle.normal,
    fontSize: 15.0,
    color: White,
  );
  static TextStyle suggestedTitleText = GoogleFonts.nunitoSans(
    fontSize: 18,
    fontWeight: AppFontWeight.fontBlack,
  );
  static TextStyle suggestedDescriptionText = GoogleFonts.nunitoSans(
    fontSize: 16,
    fontWeight: AppFontWeight.fontRegular,
  );
  static TextStyle bottomBarTitle = GoogleFonts.nunitoSans(
    fontSize: 14,
    color: DarkGray,
  );
  static TextStyle bottomBarSelectedTitle = GoogleFonts.nunitoSans(
    fontSize: 14,
    color: primaryColor,
    fontWeight: AppFontWeight.fontBold,
  );
  static TextStyle tableTitle = GoogleFonts.nunitoSans(
    color: appcolor,
    fontWeight: AppFontWeight.fontBold,
  );
  static TextStyle tableRowTitle = GoogleFonts.nunitoSans(
    fontWeight: AppFontWeight.fontBold,
  );
  static TextStyle tableRowError = GoogleFonts.nunitoSans(
    fontWeight: AppFontWeight.fontBold,
    color: DangerColor,
  );
  static TextStyle tableRowSuccess = GoogleFonts.nunitoSans(
    fontWeight: AppFontWeight.fontBold,
    color: SuccessColor,
  );

  static TextStyle tableRowItemTitle = GoogleFonts.nunitoSans(
      color: Colors.black87,
      fontWeight: AppFontWeight.fontBold,
      fontSize: 16.0,
  );

 static TextStyle tableRowItemSubTitle= GoogleFonts.nunitoSans(
    color: Colors.black54,
    fontSize: 12.0
  );

  // employee typo
  static TextStyle employeeDetailTitle = GoogleFonts.nunitoSans(
    fontSize: 16,
    color: DarkGray,
    fontWeight: AppFontWeight.fontRegular,
  );
  static TextStyle employeeDetail = GoogleFonts.nunitoSans(
    fontWeight: AppFontWeight.fontBlack,
    fontSize: 16,
    color: Black,
  );

  static TextStyle shiftPlannerStyle = TextStyle(
    color: Colors.black,
    fontSize: 16,
  );

  static TextStyle qrKioskListileTitle = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w700,
  );
  static TextStyle qrKioskArAtt = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
  static TextStyle qrKioskButtonStyle = TextStyle(
    color: Colors.black,
  );

}
