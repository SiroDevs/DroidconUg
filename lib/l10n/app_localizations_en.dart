// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get feedback => 'Feedback';

  @override
  String get appName => 'Droidcon Ug';

  @override
  String get chooseTheme => 'Choose Theme';

  @override
  String get themeDefault => 'System Default';

  @override
  String get themeLight => 'Light';

  @override
  String get themeDark => 'Dark';

  @override
  String get okay => 'Okay';

  @override
  String get cancel => 'Cancel';

  @override
  String get openSettings => 'Open Settings';

  @override
  String get remind => 'Remind Me Later';

  @override
  String get donate => 'Donate';

  @override
  String get proceed => 'Proceed';

  @override
  String get justAMinute => 'Just a minute!';

  @override
  String get noSelection => 'Oops! No selection found';

  @override
  String get noSelectionBody =>
      'Please select at least 1 book to proceed to the next step.';

  @override
  String get errorOccurred => 'Wueh! You weren\'t supposed to see this!';

  @override
  String get errorOccurredBody1 =>
      'An unexpected error occurred while trying to present the song to you. Please try again later or contact support';

  @override
  String get errorOccurredBody =>
      'An unexpected error occurred while trying to fetch data from the server. Please try again later or contact support';

  @override
  String get noConnection => 'No internet connection!';

  @override
  String get noConnectionBody =>
      'If you have reliable internet connection, then it\'s our servers that are down or unaccessible.\n\nIf this situation persists, email us: futuristicken@gmail.com with a screenshot and your device info.';

  @override
  String get itsEmptyHere => 'Wueh! It\'s empty here';

  @override
  String get themeMode => 'Theme Mode';

  @override
  String setTheme(String theme) {
    return 'Theme: $theme';
  }

  @override
  String get defaultMode => 'Default';

  @override
  String get lightMode => 'Light';

  @override
  String get darkMode => 'Dark';

  @override
  String get labelError0 => 'An unknown error occured.';

  @override
  String get labelError404 =>
      'We\'re unable to connect you to our server at the moment.';

  @override
  String get labelError500 =>
      'You\'re unable to connect to our server at the moment.';

  @override
  String get labelError504 => 'Your request to our server has timed out.';

  @override
  String get labelError999 => 'Our server returned an invalid response.';

  @override
  String get labelError1000 => 'We\'re unable to submit your request.';

  @override
  String get labelFeedback0 => 'An unknown error occured.';

  @override
  String get labelFeedback404 =>
      'We can\'t connect you to our server at the moment due to a technical issue on our end. Please try connecting again, if the issue persists contact us on: thesonglibapp@gmail.com';

  @override
  String get labelFeedback500 =>
      'We can\'t connect you to our server at the moment due to a technical issue on your end. Please try switching to a reliable internet service and trying again. If the issue persists contact us on: thesonglibapp@gmail.com';

  @override
  String get labelFeedback504 => 'Your request to our server has timed out.';

  @override
  String get labelFeedback999 => 'Our server returned an invalid response.';

  @override
  String get labelFeedback1000 => 'We\'re unable to submit your request.';

  @override
  String get labelPermissionTitle => 'Permission Required';

  @override
  String get labelPermissionText =>
      'This app requires this permissions to function properly.';

  @override
  String get misc => 'misc';
}
