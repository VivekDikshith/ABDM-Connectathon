import 'dart:ui';


const blue = Color(0xFF0F4391);

const lightSkyblue = Color(0xFFE8FAFF);
const lightSkyblue1 = Color(0xFFF8FBFF);
const SKY_BLUE_COLOR_MEDIUM = Color(0xFFB0CCF7);
const lightSkyblue2 = Color(0xFFE8FAFF);
const lightSkyblue3 = Color(0xFFFAFEFF);
const black4 = Color(0xFF545454);
const black1 = Color(0xFF707070);

const lightBlack = Color(0xFF545454);
const lightBlack1 = Color(0xFF2C2C2C);
const lightBlack2 = Color(0xFF363636);
const lightBlack3 = Color(0x80454545);

const lightgreyblack = Color(0xFF676767);

const white = Color(0xFFFFFFFF);
const black = Color(0xFF333333);
const lightWhite = Color(0xFFF9F9F7);
const grey = Color(0xFFEFEFEF);
const borderColor2 = Color(0xFFD2D2D2);
const borderColor23 = Color(0xFF0e4290);
const blueCopiedfromColor = Color(0xFF0F4391);

const MONTSERRAT_MEDIUM = 'Montserrat_medium';
const MONTSERRAT_SEMIBOLD = "MontserratSemiBold";
const MONTSERRAT_REGULAR = "Montserrat_regular";
const MONTSERRAT_LIGHT = "MontserratLight";
const RAW_MEDIUM = "Rawline_medium";

const WHITE_STRING = "#FFFFFF";
const DARK_BLUE_STRING = "#0F4391";
const BLACK_STRING = "#363636";
const LIGHT_GREY_STRING = "#B9B9B9";
const LIGHT_BLUE_STRING = "#E8FAFF";
const CYAN_BLUE_STRING = "#0E3F88";
const LIGHT_WHITE = "#FAFEFF";
const LIGHT_GREY_COLOR_STRING = "#5454541F";
const LIGHT_GREY_COLOR = "#545454";
const GREY_COLOR = "#2C2C2C";
const ORANGE_COLOR = "#FFFCDD";
const GRANITE_GRAY_COLOR = "#676767";
const darkblue = Color(0xFF0F4391);

const GREY_SHADE = Color(0xFF454545);

const FONT_SIZE_SMALL_8 = 8.0;
const FONT_SIZE_SMALL = 10.0;
const FONT_SIZE_MINI_REGULAR = 12.0;
const FONT_SIZE_MINI = 13.0;
const FONT_SIZE_REGULAR = 14.0;
const FONT_SIZE_MINI_MEDIUM = 16.0;
const FONT_SIZE_MEDIUM = 18.0;
const FONT_SIZE_HIGH = 20.0;
const FONT_SIZE_MIN_SMALL = 7.0;
const FONT_SIZE_MINI_SMALL = 8.0;
const FONT_SIZE_BELOW_SMALL = 9.0;
const FONT_SIZE_EXTRA_HIGH = 24.0;
const FONT_SIZE_MAX_SMALL = 11.0;
const Color VTB_BODY_COLOR = Color(0xFF1B4D9A);
const DARK_GRAY_COLOR = Color(0xFF303030);
const DISABLE_TEXT = Color(0xFFBBBBBB);

enum TextStyleEnum {
  MediumBlue_10,
  MediumBlack_10,
  MediumBlack_12,
  MediumIndigo_12_500,
  MediumBlack_9,
  MediumBlack_16,
  MediumBlue_8,
  MediumBlue_18,
  MediumBlue_14,
  MediumBlue_12,
  MediumGray_14,
  MediumGray_12,
  MediumWhite_18,
  Mediumlight_14,
  MediumlightWhite_14,
  MediumlightWhite_12,
  MediumDarklBlue_14,
  MediumDarklBlue_14_Opacity,
  MediumLightBlack1_18,
  MediumLightBlack2_14,
  MediumLightBlack2_14_VTB,
  MediumLightBlack2_12,
  MediumLightBlack_10,
  RegularLightBlack_10,
  Regular_Montserrat,
  Regular_Montserrat_12,
  RegularLightBlack_12_400,
  Regular_Montserrat_14,
  Regular_Montserrat_12_bold,
  Regular_Montserrat_12_enable,
  Regular_Montserrat_12_disable,
  Regular_Montserrat_12_white,
  RegularLightBlack_14,
  RegularBlackHint_14,
  RegularBlue_14,
  RegularBlue_14_VTB,
  RegularBlack_20_Bold,
  RegularLightBlack_20,
  RegularBlackWithUnderLine_14,
  RegularLightBlack1_16,
  RegularDarkGray_16_400,
  RegularBlue_16,
  RegularLightBlack2_16,
  RegularLightBlack_9,
  RegularBlue_18,
  RegularWhite_10,
  RegularWhite_18,
  RegularWhite_14,
  RegularWhite_8,
  RegularLightBlack2_14,
  RegularLightBlack2_18,
  SemiBoldBlue_7,
  SemiBoldBlue_18,
  SemiBoldPink_12,
  SemiBoldLavender_12,
  SemiBoldBlack_10,
  SemiBoldBlack_14,
  SemiBoldBlack_14_VTB,
  SemiBoldWhite_14,
}


TextStyle textStyle(TextStyleEnum textStyleEnum) {
  switch (textStyleEnum) {
  //Medium
    case TextStyleEnum.MediumBlue_10:
      {
        return TextStyle(
            fontSize: 10.0, color: blue, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.SemiBoldBlack_14:
      {
        return TextStyle(
            fontFamily: MONTSERRAT_SEMIBOLD,
            fontSize: 14,
            color: changecolor.color(GRANITE_GRAY_COLOR));
      }
      break;
    case TextStyleEnum.MediumBlack_10:
      {
        return TextStyle(
            fontSize: 10.0, color: black, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumBlack_12:
      {
        return TextStyle(
            fontSize: 12.0, color: GREY_SHADE, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumIndigo_12_500:
      {
        return TextStyle(
            fontSize: FONT_SIZE_MINI_REGULAR,
            color: VTB_BODY_COLOR,
            fontFamily: MONTSERRAT_MEDIUM,
            fontWeight: FontWeight.w500);
      }
    case TextStyleEnum.RegularLightBlack_12_400:
      {
        return TextStyle(
            fontSize: FONT_SIZE_MINI_REGULAR,
            color: lightBlack,
            fontFamily: MONTSERRAT_REGULAR,
            fontWeight: FontWeight.w400);
      }
    case TextStyleEnum.RegularDarkGray_16_400:
      {
        return TextStyle(
            fontSize: FONT_SIZE_MINI_MEDIUM,
            color: DARK_GRAY_COLOR,
            fontFamily: MONTSERRAT_REGULAR,
            fontWeight: FontWeight.w400);
      }
    case TextStyleEnum.MediumBlack_16:
      {
        return TextStyle(
            fontSize: 16.0, color: black, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.Mediumlight_14:
      {
        return TextStyle(
            fontSize: 14.0, color: lightBlack3, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumlightWhite_14:
      {
        return TextStyle(
            fontSize: 14.0, color: white, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumlightWhite_12:
      {
        return TextStyle(
            fontSize: 12.0, color: white, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumDarklBlue_14:
      {
        return TextStyle(
            fontSize: 14.0, color: darkblue, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumDarklBlue_14_Opacity:
      {
        return TextStyle(
            fontSize: 14.0,
            color: darkblue.withOpacity(0.3),
            fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumBlue_8:
      {
        return TextStyle(
            fontSize: 8.0, color: blue, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumBlack_9:
      {
        return TextStyle(
            fontSize: 9.0, color: black, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumGray_14:
      {
        return TextStyle(
            fontSize: 14.0, color: DISABLE_TEXT, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumGray_12:
      {
        return TextStyle(
            fontSize: 12.0, color: DISABLE_TEXT, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumBlue_18:
      {
        return TextStyle(
            fontSize: 14.0, color: blue, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumBlue_14:
      {
        return TextStyle(
            fontSize: 14.0, color: blue, fontFamily: MONTSERRAT_MEDIUM);
      }
    case TextStyleEnum.MediumBlue_12:
      {
        return TextStyle(
            fontSize: 12.0, color: blue, fontFamily: MONTSERRAT_MEDIUM);
      }
    case TextStyleEnum.MediumWhite_18:
      {
        return TextStyle(
            fontSize: 14.0, color: white, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;

    case TextStyleEnum.MediumLightBlack1_18:
      {
        return TextStyle(
            fontSize: 18.0, color: lightBlack1, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumLightBlack2_14:
      {
        return TextStyle(
            fontSize: 14.0, color: lightBlack2, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumLightBlack2_14_VTB:
      {
        return TextStyle(
            fontSize: 14.0, color: black4, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumLightBlack2_12:
      {
        return TextStyle(
            fontSize: 12.0, color: lightBlack2, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.MediumLightBlack_10:
      {
        return TextStyle(
            fontSize: 10.0, color: lightBlack2, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
  //Regular
    case TextStyleEnum.RegularLightBlack_10:
      {
        return TextStyle(
            fontSize: 10.0, color: lightBlack, fontFamily: MONTSERRAT_REGULAR);
      }
      break;

    case TextStyleEnum.RegularLightBlack_14:
      {
        return TextStyle(
            fontSize: 14.0, color: lightBlack, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.RegularBlackHint_14:
      {
        return TextStyle(
            fontSize: 14.0, color: black1, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.RegularBlue_14:
      {
        return TextStyle(
            fontSize: 14.0, color: darkblue, fontFamily: MONTSERRAT_REGULAR);
      }
    case TextStyleEnum.RegularBlue_14_VTB:
      {
        return TextStyle(
            fontSize: 14.0, color: darkblue, fontFamily: MONTSERRAT_MEDIUM);
      }
      break;
    case TextStyleEnum.RegularLightBlack_9:
      {
        return TextStyle(
            fontSize: 9.0, color: lightBlack, fontFamily: MONTSERRAT_REGULAR);
      }
      break;

    case TextStyleEnum.RegularBlackWithUnderLine_14:
      {
        return TextStyle(
            decoration: TextDecoration.underline,
            fontSize: 14.0,
            color: black,
            fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.RegularBlack_20_Bold:
      {
        return TextStyle(
            fontSize: FONT_SIZE_HIGH,
            color: black,
            fontFamily: MONTSERRAT_REGULAR,
            fontWeight: FontWeight.bold);
      }
      break;
    case TextStyleEnum.RegularLightBlack_20:
      {
        return TextStyle(
            fontSize: 20.0, color: lightBlack, fontFamily: MONTSERRAT_REGULAR);
      }
      break;

    case TextStyleEnum.Regular_Montserrat:
      {
        return TextStyle(
            fontSize: 20.0,
            color: changecolor.color(GREY_COLOR),
            fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.Regular_Montserrat_12_bold:
      {
        return TextStyle(
            fontSize: 12.0,
            color: black,
            fontWeight: FontWeight.bold,
            fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.Regular_Montserrat_12:
      {
        return TextStyle(
            fontSize: 12.0, color: black, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.Regular_Montserrat_14:
      {
        return TextStyle(
            fontSize: 14.0, color: black, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.Regular_Montserrat_12_enable:
      {
        return TextStyle(
            fontSize: 12.0,
            color: changecolor.color(WHITE_STRING),
            fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.Regular_Montserrat_12_disable:
      {
        return TextStyle(
            fontSize: 12.0,
            color: changecolor.color(LIGHT_GREY_COLOR),
            fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.Regular_Montserrat_12_white:
      {
        return TextStyle(
            fontSize: 12.0,
            color: changecolor.color(WHITE_STRING),
            fontFamily: MONTSERRAT_REGULAR);
      }
      break;

    case TextStyleEnum.RegularLightBlack1_16:
      {
        return TextStyle(
            fontSize: 16.0, color: lightBlack1, fontFamily: MONTSERRAT_REGULAR);
      }
      break;

    case TextStyleEnum.RegularBlue_16:
      {
        return TextStyle(
            fontSize: 16.0, color: blue, fontFamily: MONTSERRAT_REGULAR);
      }
      break;

    case TextStyleEnum.RegularLightBlack2_16:
      {
        return TextStyle(
            fontSize: FONT_SIZE_MINI_MEDIUM,
            color: lightBlack2,
            fontFamily: MONTSERRAT_REGULAR);
      }
    case TextStyleEnum.RegularBlue_18:
      {
        return TextStyle(
            fontSize: 18.0, color: blue, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.RegularWhite_10:
      {
        return TextStyle(
            fontSize: 10.0, color: white, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.RegularWhite_18:
      {
        return TextStyle(
            fontSize: 18.0, color: white, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.RegularWhite_14:
      {
        return TextStyle(
            fontSize: 14.0, color: white, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
    case TextStyleEnum.RegularWhite_8:
      {
        return TextStyle(
            fontSize: 8.0, color: white, fontFamily: MONTSERRAT_REGULAR);
      }
      break;

    case TextStyleEnum.RegularLightBlack2_14:
      {
        return TextStyle(
            fontSize: 14.0, color: lightBlack2, fontFamily: MONTSERRAT_REGULAR);
      }
      break;

    case TextStyleEnum.RegularLightBlack2_18:
      {
        return TextStyle(
            fontSize: 18.0, color: lightBlack2, fontFamily: MONTSERRAT_REGULAR);
      }
      break;

  //Semibold
    case TextStyleEnum.SemiBoldBlue_7:
      {
        return TextStyle(
            fontSize: 7, color: blue, fontFamily: MONTSERRAT_SEMIBOLD);
      }
      break;
    case TextStyleEnum.SemiBoldWhite_14:
      {
        return TextStyle(
            fontSize: 14,
            color: Color(0xFFFFFFFF),
            fontFamily: MONTSERRAT_SEMIBOLD);
      }

    case TextStyleEnum.SemiBoldBlue_18:
      {
        return TextStyle(
            fontSize: 18, color: blue, fontFamily: MONTSERRAT_SEMIBOLD);
      }
      break;
    case TextStyleEnum.SemiBoldPink_12:
      {
        return TextStyle(
            fontSize: 12,
            color: Color(0xFFE8AEAE),
            fontFamily: MONTSERRAT_SEMIBOLD);
      }
      break;
    case TextStyleEnum.SemiBoldLavender_12:
      {
        return TextStyle(
            fontSize: 12,
            color: Color(0xFF8771BC),
            fontFamily: MONTSERRAT_SEMIBOLD);
      }
      break;
    case TextStyleEnum.SemiBoldBlack_10:
      {
        return TextStyle(
            fontSize: 10,
            color: Color(0xFF5D5D5D),
            fontFamily: MONTSERRAT_SEMIBOLD);
      }
      break;
    case TextStyleEnum.SemiBoldBlack_14:
      {
        return TextStyle(
            fontSize: 14,
            color: Color(0xFF5D5D5D),
            fontFamily: MONTSERRAT_SEMIBOLD);
      }
      break;
    case TextStyleEnum.SemiBoldBlack_14_VTB:
      {
        return TextStyle(
            fontSize: 14,
            color: Color(0xFF707070),
            fontFamily: MONTSERRAT_SEMIBOLD);
      }
      break;
    default:
      {
        return TextStyle(
            color: white, fontSize: 20, fontFamily: MONTSERRAT_REGULAR);
      }
      break;
  }
}

class changecolor {
  static color(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }
}
