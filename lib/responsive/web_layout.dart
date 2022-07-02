import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/web_chat.dart';
import 'package:whatsapp_clone/widgets/web_chat_bar.dart';
import 'package:whatsapp_clone/widgets/web_message_bar.dart';
import 'package:whatsapp_clone/widgets/web_pro_bar.dart';

import '../widgets/contact_list.dart';
import '../widgets/web_search_bar.dart';

class WebLayout extends StatelessWidget {
  const WebLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ProfileBar(),
                  WebSearchBar(),
                  ContactList()
                ],
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width* 0.70,
            decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage('assets/images/whatWp.jpg'),
                  fit: BoxFit.cover)
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                WebChatBar(),
                Expanded(child: ChatList()),
                WebMessageBar()
              ],
            ),
          )

        ],
      ),
    );
  }
}
