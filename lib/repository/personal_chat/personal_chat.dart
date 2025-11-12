import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/widgets/chat_input_bar.dart';
import 'package:messenger_clone/repository/widgets/uihelper.dart';

class PersonalChat extends StatefulWidget {
  const PersonalChat({super.key});

  @override
  State<PersonalChat> createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  final TextEditingController _controller = TextEditingController();
  final List<Map<String, dynamic>> messages = [
    {'text': 'Hello!', 'isMe': false},
    {'text': 'Hi, how are you?', 'isMe': true},
    {'text': 'I am good, thanks!', 'isMe': false},
  ];

  void _sendMessage() {
    if (_controller.text.trim().isNotEmpty) {
      setState(() {
        messages.add({'text': _controller.text, 'isMe': true});
      });
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).brightness == Brightness.dark
                ? AppColors.scaffoldDarkMode
                : AppColors.scaffoldLightMode,
            border: Border.all(width: 0.1)
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey.withOpacity(0.15), // halka soft shadow
            //     blurRadius: 1,
            //     offset: const Offset(0, 4),
            //   ),
            // ],
          ),
          child: AppBar(
            elevation: 0,
            shadowColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
            backgroundColor: Colors.transparent,
            leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.arrow_back_ios),
              color: Theme.of(context).brightness == Brightness.dark
                  ? Colors.white
                  : Colors.black,
            ),
            title: UiHelper.customText(
              text: 'Athalia Putri',
              fontSize: 18,
              fontWeight: FontWeight.w600,
              fontFamily: 'regular',
              context: context,
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.phone,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.videocam_rounded,
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),

      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: messages.length,
              itemBuilder: (context, index) {
                final msg = messages[index];
                return Align(
                  alignment: msg['isMe']
                      ? Alignment.centerRight
                      : Alignment.centerLeft,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    decoration: BoxDecoration(
                      color: msg['isMe'] ? Colors.blue : Colors.grey[200],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Text(
                      msg['text'],
                      style: TextStyle(
                        color: msg['isMe'] ? Colors.white : Colors.black,
                        fontSize: 15,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: 25,
            ),
            decoration: BoxDecoration(
              color: Theme.of(context).brightness == Brightness.dark
                  ? AppColors.bottomDarkMode
                  : AppColors.bottomLightMode,
              border: Border.all(width: 0.1)
              // boxShadow: [
              //   BoxShadow(
              //     color: Colors.grey.withOpacity(0.2),
              //     offset: const Offset(0, -2),
              //   ),
              // ],
            ),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.add, color: Colors.grey),
                  onPressed: () {},
                ),
                Expanded(
                  child: Container(
                    padding: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      color: Theme.of(context).brightness == Brightness.dark
                          ? AppColors.containerDarkMode
                          : AppColors.containerLightMode, // 🎨 your custom color
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: UiHelper.customTextField(
                      controller: _controller,
                      text: 'Type message...',
                      textInputType: TextInputType.text,
                      context: context,
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.send, color: Color(0xff375FFF)),
                  onPressed: _sendMessage,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
