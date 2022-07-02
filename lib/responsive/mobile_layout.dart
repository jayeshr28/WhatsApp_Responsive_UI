import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:whatsapp_clone/widgets/contact_list.dart';

import '../themes/colors.dart';

class MobileLayout extends StatelessWidget {

  const MobileLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double yourWidth = width /6;
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("WhatsApp", style: TextStyle(
            fontSize: 20,
              color: Colors.grey,),),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert, color: Colors.grey,))
        ],
          bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.lightGreenAccent[400],
              indicatorWeight: 4,
              labelColor: Colors.lightGreenAccent[400],
              unselectedLabelColor: Colors.grey,
              labelStyle: TextStyle(fontWeight: FontWeight.bold),
              tabs: [
                Container(
                  width: 30,
                  alignment: Alignment.center,
                  child: Icon(
                    Icons.camera_alt,
                  ),
                ),
                Container(
                    width: yourWidth,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("CHATS")),
                Container(
                    width: yourWidth,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("STATUS")),
                Container(
                    width: yourWidth,
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("CALL"))
          ]),
        ),
          body: ContactList(),
      ),
    );
  }
}