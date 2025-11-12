import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/login/login_screen.dart';
import 'package:messenger_clone/repository/widgets/uihelper.dart';

class OnboardingScreen extends StatelessWidget {

  const OnboardingScreen({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkMode
            : AppColors.scaffoldLightMode,
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.dark_mode_outlined),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customImage(imageUrl: 'onboarding.png'),
            const SizedBox(height: 20),

            UiHelper.customText(
              text: 'Connect easily with',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'bold',
              context: context,
            ),
            UiHelper.customText(
              text: 'your family and friends',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "bold",
              context: context,
            ),
            UiHelper.customText(
              text: 'over countries',
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: "bold",
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.customButton(
        buttonText: "Start Messaging",
        callBack: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => LoginScreen()),
          );
        },
        context: context,
      ),
    );
  }
}
