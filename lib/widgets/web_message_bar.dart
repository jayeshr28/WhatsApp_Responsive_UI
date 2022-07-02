import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WebMessageBar extends StatelessWidget {
  const WebMessageBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width*0.70,
      padding: const EdgeInsets.all(10),
      color: Color(0xff101820),
      child: Row(
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconButton(onPressed: (){}, icon: Icon(Icons.emoji_emotions_outlined, color: Colors.grey,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.attach_file_rounded, color: Colors.grey,)),
          Expanded(
              child: TextField(
            decoration:InputDecoration(
                filled: true,
                hintStyle: TextStyle(color: Colors.white60),
                fillColor: Color(0xff101750),
                hintText: "Type a message",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(width: 0,style: BorderStyle.none)
                ),
                contentPadding: const EdgeInsets.all(12)
            ),
          )),
          IconButton(onPressed: (){}, icon: Icon(Icons.send, color: Colors.grey,)),
        ],
      ),
    );
  }
}
