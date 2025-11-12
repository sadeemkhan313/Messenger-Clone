import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/widgets/uihelper.dart';

class MoreScreen extends StatelessWidget {
  const MoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkMode
            : AppColors.scaffoldLightMode,
        automaticallyImplyLeading: false,
        title: UiHelper.customText(
          text: 'More',
          fontSize: 18,
          context: context,
          fontWeight: FontWeight.w600,
          fontFamily: 'regular',
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: Theme.of(context).brightness == Brightness.dark
                ? UiHelper.customImage(imageUrl: 'DarkProfile.png', scale: 3)
                : UiHelper.customImage(imageUrl: 'whiteProfile.png'),
            title: UiHelper.customText(
              text: 'Sadeem Khan',
              fontSize: 14,
              context: context,
              fontWeight: FontWeight.w600,
              fontFamily: 'bold',
            ),
            subtitle: UiHelper.customText(
              text: '+92 335-1668688',
              fontSize: 12,
              context: context,
              fontWeight: FontWeight.w400,
              fontFamily: 'regular',
              color: AppColors.lightColor,
            ),
            trailing: IconButton(
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
              onPressed: () {},
              icon: Icon(Icons.arrow_forward_ios),
            ),
          ),
          SizedBox(height: 20),

          _buildMorePage(
            icon: CupertinoIcons.person,
            title: 'Account',
            callBack: () {},
            context: context,
            trail: Icons.arrow_forward_ios,
          ),//account
          _buildMorePage(
            icon: CupertinoIcons.chat_bubble,
            title: 'Chat',
            callBack: () {},
            context: context,
            trail: Icons.arrow_forward_ios,
          ),//Chat
          _buildMorePage(
            icon: Icons.wb_sunny_outlined,
            title: 'Appearance',
            callBack: () {},
            context: context,
            trail: Icons.arrow_forward_ios,
          ),//Appearance
          _buildMorePage(
            icon: Icons.notifications_none_outlined,
            title: 'Notification',
            callBack: () {},
            context: context,
            trail: Icons.arrow_forward_ios,
          ),//Notification
          _buildMorePage(
            icon: Icons.privacy_tip_outlined,
            title: 'Privacy',
            callBack: () {},
            context: context,
            trail: Icons.arrow_forward_ios,
          ),//Privacy
          _buildMorePage(
            icon: Icons.folder_open,
            title: 'Data Usage',
            callBack: () {},
            context: context,
            trail: Icons.arrow_forward_ios,
          ), //Privacy
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Divider(),
          ),
          _buildMorePage(
            icon: Icons.help_outline,
            title: 'Help',
            callBack: () {},
            context: context,
            trail: Icons.arrow_forward_ios,
          ),//Privacy
          _buildMorePage(
            icon: Icons.mail_outline,
            title: 'Invite Your Friends',
            callBack: () {},
            context: context,
            trail: Icons.arrow_forward_ios,
          ),//Privacy
        ],
      ),
    );
  }

  Widget _buildMorePage({
    required IconData trail,
    required IconData icon,
    required String title,
    required VoidCallback callBack,
    required BuildContext context,
  }) {
    return ListTile(
      leading: Icon(icon,color: Theme.of(context).brightness == Brightness.dark
          ? Colors.white
          : Colors.black,),
      title: UiHelper.customText(
        text: title,
        fontSize: 14,
        context: context,
        fontWeight: FontWeight.w600,
      ),
      onTap: callBack,
      trailing: Icon(
        trail,
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
      ),
    );
  }
}
