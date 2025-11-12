import 'package:flutter/material.dart';
import 'package:messenger_clone/domain/constants/app_colors.dart';
import 'package:messenger_clone/repository/personal_chat/personal_chat.dart';
import 'package:messenger_clone/repository/widgets/uihelper.dart';

class ContactsScreen extends StatelessWidget {
  TextEditingController searchController = TextEditingController();
  List contacts = [
    {
      'img': 'Avatar.png',
      'name': 'Athalia putri',
      'lastSeen': 'Last seen yesterday',
    },
    {'img': 'Avatar (1).png', 'name': 'Erlan Sadewa', 'lastSeen': 'Online'},
    {
      'img': 'Avatar (2).png',
      'name': 'Midala Huera',
      'lastSeen': 'Last seen 3 hours ago',
    },
    {'img': 'Avatar (3).png', 'name': 'Nafisa Gitari', 'lastSeen': 'Online'},
    {'img': 'Avatar (4).png', 'name': 'Raki Devon', 'lastSeen': 'Online'},
    {
      'img': 'Avatar (5).png',
      'name': 'Salsabila Akira',
      'lastSeen': 'Last seen 30 minutes ago',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? AppColors.scaffoldDarkMode
            : AppColors.scaffoldLightMode,
        automaticallyImplyLeading: false,
        title: UiHelper.customText(
          text: 'Contacts',
          fontSize: 18,
          context: context,
          fontWeight: FontWeight.w600,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.add))],
      ),
      body: Center(
        child: Column(
          children: [
            UiHelper.customTextField(
              controller: searchController,
              icon: Icons.search,
              text: 'Search',
              textInputType: TextInputType.name,

              context: context,
            ),

            SizedBox(height: 10),

            Expanded(
              child: ListView.builder(
                itemCount: contacts.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 20.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => PersonalChat(),));
                      },
                      child: ListTile(
                        leading: UiHelper.customImage(
                          imageUrl: contacts[index]['img'].toString(),
                        ),
                        title: UiHelper.customText(
                          text: contacts[index]['name'].toString(),
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          fontFamily: 'regular',
                          context: context,
                        ),
                        subtitle: UiHelper.customText(
                          text: contacts[index]['lastSeen'].toString(),
                          fontSize: 12,
                          // fontWeight: FontWeight.w400,
                          // fontFamily: 'regular',
                          color: Color(0xffADB5BD),
                          context: context,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
