import 'package:digikit_w_o/app/modules/common/constant/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Insets {
  static double offsetScale = 1;
  static double get xs => 4.w;
  static double get sm => 8.w;
  static double get med => 12.w;
  static double get lg => 16.w;
  static double get xl => 20.w;
  static double get base => 24.w;
  static double get xxl => 32.w;
  // Offset, used for the edge of the window, or to separate large sections in the app
  static double get offset => 40 * offsetScale;
}

class BorderStyles {
  static Border borderGrey =
      Border.all(color: Colors.grey.withOpacity(0.4), width: 1.5);

  static OutlineInputBorder enableTextField = OutlineInputBorder(
    borderSide:
        BorderSide(color: AppColor.neutral.shade400, width: Strokes.thin),
    borderRadius: Corners.lgBorder,
  );

  static OutlineInputBorder focusTextField = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColor.primary, width: Strokes.thin),
    borderRadius: Corners.lgBorder,
  );

  static OutlineInputBorder disableTextField = OutlineInputBorder(
    borderSide:
        BorderSide(color: AppColor.neutral.shade300, width: Strokes.xthin),
    borderRadius: Corners.lgBorder,
  );

  static OutlineInputBorder errorTextField = OutlineInputBorder(
    borderSide: const BorderSide(color: AppColor.error, width: Strokes.thin),
    borderRadius: Corners.lgBorder,
  );
}

Widget verticalSpace(double v) {
  return SizedBox(height: v);
}

Widget horizontalSpace(double v) {
  return SizedBox(width: v);
}

/// Used for all animations in the  app
class Times {
  static const Duration fastest = Duration(milliseconds: 150);
  static const fast = Duration(milliseconds: 250);
  static const medium = Duration(milliseconds: 350);
  static const slow = Duration(milliseconds: 700);
  static const slower = Duration(milliseconds: 1000);
}

class SizesWidth {
  static double get m => 5.w;
  static double get xs => 8.w;
  static double get sm => 12.w;
  static double get med => 20.w;
  static double get lg => 32.w;
  static double get xl => 48.w;
  static double get xls => 60.w;
  static double get xxl => 80.w;
  static double get xxxl => 100.w;
  static double get xxxxl => 150.w;
  static double get xxxxxl => 200.w;
}

class SizesHight {
  static double get s => 3.h;
  static double get m => 5.h;
  static double get xs => 8.h;
  static double get sm => 12.h;
  static double get med => 20.h;
  static double get lg => 32.h;
  static double get xl => 48.h;
  static double get xls => 60.h;
  static double get xxl => 80.h;
  static double get xsxl => 110.h;
  static double get xxxl => 120.h;
  static double get xxxxl => 150.h;
  static double get xxxxxl => 200.h;
}

class IconSizes {
  static double get sm => 16.w;
  static double get smx => 20.w;
  static double get med => 24.w;
  static double get medx => 28.w;
  static double get lg => 32.w;
  static double get menu => 40.w;
  static double get xl => 48.w;
  static double get xxl => 60.w;
  static double get xxxl => 120.w;
}

class Corners {
  static double xs = 1.w;
  static BorderRadius xsBorder = BorderRadius.all(xsRadius);
  static Radius xsRadius = Radius.circular(xs);

  static double sm = 3.w;
  static BorderRadius smBorder = BorderRadius.all(smRadius);
  static Radius smRadius = Radius.circular(sm);

  static double med = 5.w;
  static BorderRadius medBorder = BorderRadius.all(medRadius);
  static Radius medRadius = Radius.circular(med);

  static double lg = 8.w;
  static BorderRadius lgBorder = BorderRadius.all(lgRadius);
  static Radius lgRadius = Radius.circular(lg);

  static double xl = 16.w;
  static BorderRadius xlBorder = BorderRadius.all(xlRadius);
  static Radius xlRadius = Radius.circular(xl);

  static double xxl = 24.w;
  static BorderRadius xxlBorder = BorderRadius.all(xxlRadius);
  static Radius xxlRadius = Radius.circular(xxl);
}

class Strokes {
  static const double xthin = 0.7;
  static const double thin = 1;
  static const double med = 2;
  static const double thick = 4;
}

/// Font Sizes
/// You can use these directly if you need, but usually there should be a predefined style in TextStyles.
class FontSizes {
  /// Provides the ability to nudge the app-wide font scale in either direction
  static double get s8 => 8.w;
  static double get s9 => 9.w;
  static double get s10 => 10.w;
  static double get s11 => 11.w;
  static double get s12 => 12.w;
  static double get s14 => 14.w;
  static double get s16 => 16.w;
  static double get s18 => 18.w;
  static double get s20 => 20.w;
  static double get s24 => 24.w;
  static double get s26 => 26.w;
  static double get s28 => 28.w;
  static double get s32 => 32.w;
  static double get s36 => 36.w;
  static double get s40 => 40.w;
  static double get s48 => 48.w;
  static double get s56 => 56.w;
}

/// Fonts - A list of Font Families, this is uses by the TextStyles class to create concrete styles.

/// TextStyles - All the core text styles for the app should be declared here.
/// Don't try and create every variant in existence here, just the high level ones.
/// More specific variants can be created on the fly using `style.copyWith()`
/// `newStyle = TextStyles.body1.copyWith(lineHeight: 2, color: Colors.red)`
class TextStyles {
  /// Declare a base style for each Family
  static const TextStyle inter =
      TextStyle(fontWeight: FontWeight.w400, fontFamily: 'Poppins');

  static TextStyle get h1 => inter.copyWith(
      fontWeight: FontWeight.w700,
      fontSize: FontSizes.s56,
      letterSpacing: -1,
      height: 1.17);
  static TextStyle get h2 =>
      h1.copyWith(fontSize: FontSizes.s40, letterSpacing: -.5, height: 1.16);
  static TextStyle get h3 => h1.copyWith(
        fontSize: FontSizes.s32,
        letterSpacing: -.05,
        height: 1.29,
      );
  static TextStyle get h4 => h1.copyWith(fontSize: FontSizes.s26);
  static TextStyle get h5 => h1.copyWith(fontSize: FontSizes.s20);
  static TextStyle get h6 => h3.copyWith(fontSize: FontSizes.s18);

  static TextStyle get text2xs => inter.copyWith(fontSize: FontSizes.s10);
  static TextStyle get textXs => inter.copyWith(fontSize: FontSizes.s12);
  static TextStyle get textXsBold =>
      textXs.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get textSm => inter.copyWith(fontSize: FontSizes.s14);
  static TextStyle get textSmBold =>
      textSm.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get textBase => inter.copyWith(fontSize: FontSizes.s16);
  static TextStyle get textBaseBold =>
      textBase.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get text2Base => inter.copyWith(fontSize: FontSizes.s18);
  static TextStyle get text2BaseBold =>
      text2Base.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get textLg => inter.copyWith(fontSize: FontSizes.s20);
  static TextStyle get textLgBold =>
      textLg.copyWith(fontWeight: FontWeight.w700, height: 1.4);
  static TextStyle get textXl => inter.copyWith(fontSize: FontSizes.s24);
  static TextStyle get textXlBold =>
      textXl.copyWith(fontWeight: FontWeight.w700, height: 1.25);
  static TextStyle get text2xl => inter.copyWith(fontSize: FontSizes.s32);
  static TextStyle get text2xlBold =>
      text2xl.copyWith(fontWeight: FontWeight.w700);
  static TextStyle get text3xl => inter.copyWith(fontSize: FontSizes.s40);
  static TextStyle get text3xlBold =>
      text3xl.copyWith(fontWeight: FontWeight.w700);
}

class CustomInputDecoration {
  static InputDecoration inputDecoration({
    required String hintText,
    Widget? prefixIcon,
    Widget? suffixIcon,
    FontStyle? fontStyle,
    InputBorder? enabledBorder,
    InputBorder? focusedBorder,
    InputBorder? errorBorder,
    EdgeInsets? contentPadding,
    Color? color,
    TextStyle? hintStyles,
    TextStyle? errorStyle,
    InputBorder? border,
  }) {
    return InputDecoration(
      isDense: true,
      filled: true,
      fillColor: color ?? Colors.white,
      contentPadding: contentPadding ??
          EdgeInsets.symmetric(horizontal: Insets.sm, vertical: Insets.med),
      hintText: hintText,
      border: border ?? BorderStyles.disableTextField,
      focusedBorder: focusedBorder ?? BorderStyles.focusTextField,
      enabledBorder: enabledBorder ?? BorderStyles.enableTextField,
      errorBorder: errorBorder ?? BorderStyles.errorTextField,
      disabledBorder: BorderStyles.disableTextField,
      errorMaxLines: 5,
      prefixIcon: prefixIcon,
      prefixIconConstraints:
          BoxConstraints(minHeight: SizesWidth.lg, minWidth: SizesWidth.lg),
      suffixIconConstraints:
          BoxConstraints(minHeight: SizesWidth.lg, minWidth: SizesWidth.lg),
      suffixIcon: suffixIcon,
      hintStyle: hintStyles ??
          TextStyles.inter.copyWith(
            fontSize: FontSizes.s12,
            fontWeight: FontWeight.normal,
            color: AppColor.neutral.shade500,
            fontStyle: fontStyle ?? FontStyle.normal,
          ),
      errorStyle: errorStyle,
    );
  }
}
