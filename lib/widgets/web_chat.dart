import 'package:flutter/material.dart';
import 'package:whatsapp_clone/widgets/contacts_info.dart';
import 'package:whatsapp_clone/widgets/reciever_chat.dart';
import 'package:whatsapp_clone/widgets/sender_chat.dart';

class ChatList extends StatelessWidget {
  const ChatList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context,index){
        if(messages[index]['isMe'] == false){
          return ReceiverChats(message: messages[index]['text'].toString(), time: messages[index]['time'].toString());
        }
        else{
          return SenderChats(messages: messages[index]['text'].toString(), times: messages[index]['time'].toString());
        }

      },
    );
  }
}
