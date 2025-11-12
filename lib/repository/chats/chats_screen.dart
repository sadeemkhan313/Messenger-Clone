import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/widgets/uihelper.dart';

class ChatsScreen extends StatelessWidget {
  TextEditingController placeholderController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkMode
            : AppColors.scaffoldLightMode,
        automaticallyImplyLeading: false,
        title: UiHelper.customText(
          text: 'Chats',
          fontSize: 18,
          context: context,
          fontWeight: FontWeight.w600,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.mark_chat_unread_outlined,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.iconDarkMode
                  : AppColors.iconsLightMode,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert,
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.iconDarkMode
                  : AppColors.iconsLightMode,
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Row(
            children: [
              SizedBox(width: 20),
              Column(
                children: [
                  UiHelper.customImage(imageUrl: 'story.png'),
                  SizedBox(height: 5),
                  UiHelper.customText(
                    text: 'Your Story',
                    fontSize: 10,
                    context: context,
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Theme.of(context).brightness == Brightness.dark
              ? Color(0xff000016)
              : Colors.grey,
          ),

          SizedBox(height: 10),

          UiHelper.customTextField(
            controller: placeholderController,
            icon: Icons.search,
            text: 'Placeholder',
            textInputType: TextInputType.name,
            context: context,
          ),
        ],
      ),
    );
  }
}
