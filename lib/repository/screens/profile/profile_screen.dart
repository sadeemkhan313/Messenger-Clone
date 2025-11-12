import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/screens/bottom_navigation/bottom_bar.dart';
import 'package:messenger_clone/repository/widgets/uihelper.dart';

class ProfileScreen extends StatelessWidget {
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkMode
            : AppColors.scaffoldLightMode,
        leading: IconButton(onPressed: () {}, icon: Icon(CupertinoIcons.back)),
        title: UiHelper.customText(
          text: 'Your Profile',
          fontSize: 18,
          context: context,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Theme.of(context).brightness == Brightness.dark
                ? UiHelper.customImage(imageUrl: "DarkProfile.png")
                : UiHelper.customImage(imageUrl: 'whiteProfile.png'),
            SizedBox(height: 15),

            UiHelper.customTextField(
              controller: firstNameController,
              icon: Icons.person,
              text: 'First Name (Required)',
              textInputType: TextInputType.name,
              context: context,
            ),
            SizedBox(height: 10,),
            UiHelper.customTextField(
              controller: lastNameController,
              icon: Icons.person,
              text: 'Last Name (Required)',
              textInputType: TextInputType.name,
              context: context,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: UiHelper.customButton(
          buttonText: 'Save', callBack: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => BottomBar(),));
      }, context: context),
    );
  }
}
