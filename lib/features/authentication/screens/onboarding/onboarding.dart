import 'package:e_store/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:e_store/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:e_store/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:e_store/utils/constants/image_strings.dart';
import 'package:e_store/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        /// Horizontal Scrollable Pages
        PageView(
          children: const [
            OnBoardingPage(
              image: EImages.onBoardingImage1,
              title: ETexts.onBoardingTitle1,
              subTitle: ETexts.onBoardingSubTitle1,
            ),
            OnBoardingPage(
              image: EImages.onBoardingImage2,
              title: ETexts.onBoardingTitle2,
              subTitle: ETexts.onBoardingSubTitle2,
            ),
            OnBoardingPage(
              image: EImages.onBoardingImage3,
              title: ETexts.onBoardingTitle3,
              subTitle: ETexts.onBoardingSubTitle3,
            )
          ],
        ),
        const OnBoardingSkip(),

        // Dot Navigation SmoothPageIndicator
        const OnBoardingDotNavigation(),
      ],
    ));
  }
}
