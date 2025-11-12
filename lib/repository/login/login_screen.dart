import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/screens/otp/otp_screen.dart';
import 'package:messenger_clone/repository/widgets/uihelper.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController phoneController = TextEditingController();

  LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkMode
            : AppColors.scaffoldLightMode,
        leading: IconButton(onPressed: () {
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back)),
      ),
      backgroundColor: Theme.of(context).brightness == Brightness.dark
          ? AppColors.scaffoldDarkMode
          : AppColors.scaffoldLightMode,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              text: 'Enter Your Phone Number',
              fontSize: 24,
              fontWeight: FontWeight.w700,
              context: context,
            ),
            UiHelper.customText(
              text: 'Please confirm your country code and enter',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xff0F1828),
              context: context,
            ),
            UiHelper.customText(
              text: 'your phone number',
              fontSize: 14,
              fontWeight: FontWeight.w400,
              context: context,
            ),

            SizedBox(height: 20),

            UiHelper.customTextField(
              controller: phoneController,
              icon: Icons.phone,
              text: 'Phone Number',
              textInputType: TextInputType.number,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.customButton(
        buttonText: 'Continue',
        callBack: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => OtpScreen(),));
        },
        context: context,
      ),
    );
  }
}
