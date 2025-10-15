import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:styled_widget/styled_widget.dart';

import '../../../core/constants/app_assets.dart';
import '../../../core/constants/app_constants.dart';
import '../../../core/utils/date_util.dart';
import '../../navigator/route_names.dart';
import '../../theme/theme_colors.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _goToNextScreen();
  }

  Future<void> _goToNextScreen() async {
    await Future<void>.delayed(const Duration(seconds: 3));
    Navigator.pushNamedAndRemoveUntil(
      context,
      RouteNames.home,
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Spacer(),
            Image.asset(AppAssets.appIcon, height: 200, width: 200),
            const SizedBox(height: 10),
            AnimatedTextKit(
              animatedTexts: [
                TyperAnimatedText(
                  AppConstants.appTitle1,
                  textStyle: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: ThemeColors.secondaryDark,
                  ),
                  speed: const Duration(milliseconds: 110),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 0),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            AnimatedTextKit(
              animatedTexts: [
                ScaleAnimatedText(
                  yearNow(),
                  textStyle: Theme.of(context).textTheme.displayLarge?.copyWith(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: ThemeColors.primary,
                  ),
                ),
              ],
              totalRepeatCount: 1,
              pause: const Duration(milliseconds: 0),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            const Spacer(),
            const Divider().padding(horizontal: 30),
            const Text(AppConstants.appCredits, style: TextStyle(fontSize: 14)),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
