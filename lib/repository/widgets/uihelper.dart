import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';

class UiHelper {
  static customImage({required String imageUrl, int? scale}) {
    return Image.asset("assets/images/$imageUrl", scale: 3);
  }

  static customText({
    required String text,
    required double fontSize,
    String? fontFamily,
    fontWeight,
    Color? color,
    required BuildContext context,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight ?? FontWeight.normal,
        fontFamily: fontFamily ?? "regular",
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.textDarkMode
            : AppColors.textLightMode,
      ),
    );
  }

  static customButton({
    required buttonText,
    required VoidCallback callBack,
    Color? buttonColor,
    required BuildContext context,
  }) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.068,
      width: MediaQuery.sizeOf(context).width * 0.86,
      child: ElevatedButton(
        onPressed: callBack,
        style: ElevatedButton.styleFrom(
          backgroundColor: Theme.of(context).brightness == Brightness.dark
              ? AppColors.buttonDarkMode
              : AppColors.buttonDarkMode,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
        ),
        child: Text(
          buttonText,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  static customTextField({
    required TextEditingController controller,
    required String text,
    required TextInputType textInputType,
    required BuildContext context,
    IconData? icon,
  }) {
    return Container(
      height: MediaQuery.sizeOf(context).height*0.06,
      width: MediaQuery.sizeOf(context).width*0.8,
      decoration: BoxDecoration(
        color: Theme.of(context).brightness == Brightness.dark
            ? AppColors.containerDarkMode
            : AppColors.containerLightMode,
        borderRadius: BorderRadius.circular(7),
      ),
      child: TextFormField(
        controller: controller,
        keyboardType: textInputType,
        decoration: InputDecoration(
          prefixIcon: icon != null?Icon(icon,color: AppColors.lightColor,): null,
          prefixIconColor: Theme.of(context).brightness == Brightness.dark
              ? AppColors.hintTextDarkMode
              : AppColors.hintTextLightMode,
          hintText: text,
          border: InputBorder.none,
          hintStyle: TextStyle(
            fontFamily: 'regular',
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: AppColors.lightColor,
          ),
        ),
      ),
    );
  }
}
