import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';

class ChatInputBar extends StatelessWidget {
  const ChatInputBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
        decoration:  BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 2,
              offset: const Offset(0, -2),
            ),
          ],

        ),
        child: Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.add, color: Colors.grey, size: 24),
            ),
            Expanded(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xfff8f8fc),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Type a message',
                        )
                    )
                )
            ),
            IconButton(
              icon:  Icon(Icons.send, color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.buttonDarkMode
                  : AppColors.buttonDarkMode, size: 22),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
