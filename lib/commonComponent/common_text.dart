import '../../../config.dart';

class TextCommon {
  textMediumDarkColor({text}) {
    return Text(text,
            style: AppCss.metropolisMediumText
                .textColor(appCtrl.appTheme.distance))
        .alignment(Alignment.center);
  }

  smallTextDarkColor({text}) {
    return Text(text,
        style: AppCss.metropolisSmallText.textColor(appCtrl.appTheme.distance));
  }

  smallTextLightColor({text}) {
    return Text(text,
        style: AppCss.metropolisSmallText
            .textColor(appCtrl.appTheme.lightText)
            .textHeight(1.3));
  }

  h1WhiteColor({text}) {
    return Text(text,
        style: AppCss.metropolisH1.textColor(appCtrl.appTheme.sameWhite));
  }

  h3DarkTextColor({text}) {
    return Text(text,
        style: AppCss.metropolisH3Bold.textColor(appCtrl.appTheme.darkText));
  }

  title1DarkColor({text}) {
    return Text(text,
        style:
            AppCss.metropolisTitle1Bold.textColor(appCtrl.appTheme.darkText));
  }

  largeButtonWhiteColor({text}) {
    return Text(text,
        style:
            AppCss.metropolisLargeButton.textColor(appCtrl.appTheme.sameWhite));
  }
}
