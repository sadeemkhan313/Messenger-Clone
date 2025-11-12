import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/screens/profile/profile_screen.dart';
import 'package:messenger_clone/repository/widgets/uihelper.dart';
import 'package:pinput/pinput.dart';

class OtpScreen extends StatelessWidget {
  TextEditingController oTpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 20,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontWeight: FontWeight.w600,
      ),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(70)),
    );
    final focusedPinTheme = defaultPinTheme.copyDecorationWith(
      color: Theme.of(context).brightness == Brightness.dark
          ? AppColors.oTpDarkMode
          : AppColors.oTpLightMode,
      borderRadius: BorderRadius.circular(8),
    );

    final submittedPinTheme = defaultPinTheme.copyWith(
      decoration: defaultPinTheme.decoration!.copyWith(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.oTpDarkMode
            : AppColors.oTpLightMode,
      ),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkMode
            : AppColors.scaffoldLightMode,
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(CupertinoIcons.back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            UiHelper.customText(
              text: 'Enter Code',
              fontSize: 24,
              fontFamily: 'bold',
              context: context,
              fontWeight: FontWeight.bold,
            ),
            UiHelper.customText(
              text: 'We have sent you an SMS with the code',
              fontSize: 14,
              fontFamily: 'regular',
              fontWeight: FontWeight.w400,
              color: Color(0xff0F1828),
              context: context,
            ),
            UiHelper.customText(
              text: 'to +62 1309 - 1710 - 1920',
              fontSize: 14,
              fontFamily: 'regular',
              color: Color(0xff0F1828),
              fontWeight: FontWeight.w400,
              context: context,
            ),
            SizedBox(height: 15),

            Pinput(
              onCompleted: (value) {
                Navigator.push(
                    context, MaterialPageRoute(
                    builder: (context) => ProfileScreen(),));
              },
              controller: oTpController,
              defaultPinTheme: defaultPinTheme,
              focusedPinTheme: focusedPinTheme,
              submittedPinTheme: submittedPinTheme,
              autofocus: true,
            ),
            SizedBox(height: 15),


          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: TextButton(
        onPressed: () {},
        child: Text(
          'Resend Code',
          style: GoogleFonts.mulish(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.resendCodeOtpDarkMode
                : AppColors.resendCodeOtpLightMode,
          ),
        ),
      ),
    );
  }
}
