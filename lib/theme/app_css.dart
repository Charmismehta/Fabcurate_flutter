import '../../config.dart';

part 'scale.dart';

class AppCss {
  //metropolis font
  static TextStyle metropolis = const TextStyle(
    fontFamily: "metropolis",
    letterSpacing: 0,
    height: 1,
  );

  static TextStyle get metropolisSmallTextLight =>
      metropolis.light.size(FontSizes.f12);

  //Text Style metropolis extraThickBold
  static TextStyle get metropolisH1 =>
      metropolis.extraThickBold.size(FontSizes.f20);
  static TextStyle get metropolisH2 =>
      metropolis.extraThickBold.size(FontSizes.f18);

  //Text Style metropolis Medium
  static TextStyle get metropolisTitle2 =>
      metropolis.medium.size(FontSizes.f14);
  static TextStyle get metropolisLargeButton =>
      metropolis.medium.size(FontSizes.f18);
  static TextStyle get metropolisMediumText =>
      metropolis.medium.size(FontSizes.f16);

  //Text Style metropolis SemiBold
  static TextStyle get metropolisH3 => metropolis.semiBold.size(FontSizes.f16);
  static TextStyle get metropolisTitle1 =>
      metropolis.semiBold.size(FontSizes.f14);
  static TextStyle get metropolisTagText =>
      metropolis.semiBold.size(FontSizes.f10);
  static TextStyle get metropolisTitle3 =>
      metropolis.semiBold.size(FontSizes.f12);

  //Text Style metropolis regular
  static TextStyle get metropolisSmallText =>
      metropolis.regular.size(FontSizes.f12);
  static TextStyle get metropolisLargeText =>
      metropolis.regular.size(FontSizes.f14);

  //Text Style metropolis extraBold
  static TextStyle get metropolisPrice =>
      metropolis.extraBold.size(FontSizes.f16);

  static TextStyle get metropolisBoldF12 =>
      metropolis.extraBold.size(FontSizes.f12);
  static TextStyle get metropolisBoldF14 =>
      metropolis.extraBold.size(FontSizes.f14);
  static TextStyle get metropolisLarge =>
      metropolis.extraBold.size(FontSizes.f45);

  static TextStyle get metropolisH3Bold => metropolis.bold.size(FontSizes.f16);
  static TextStyle get metropolisTagTextBold =>
      metropolis.bold.size(FontSizes.f10);
  static TextStyle get metropolisTitle3Bold =>
      metropolis.bold.size(FontSizes.f12);
  static TextStyle get metropolisTitle2Bold =>
      metropolis.bold.size(FontSizes.f14);
  static TextStyle get metropolisTitle1Bold =>
      metropolis.bold.size(FontSizes.f14);
}
