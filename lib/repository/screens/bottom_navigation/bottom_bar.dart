import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/chats/chats_screen.dart';
import 'package:messenger_clone/repository/more/more_screen.dart';
import 'package:messenger_clone/repository/screens/contacts/contacts_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentIndex = 0;
  List<Widget> pages = [
     ContactsScreen(),
     ChatsScreen(),
    const MoreScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.person_2_alt),
            label: 'Contacts',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.chat_bubble_fill),
            label: 'Chats',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedIconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark
              ? AppColors.iconDarkMode
              : AppColors.iconsLightMode,
        ),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.bottomDarkMode
            : AppColors.bottomLightMode,
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
      ),
      body: IndexedStack(index: currentIndex, children: pages),
    );
  }
}
