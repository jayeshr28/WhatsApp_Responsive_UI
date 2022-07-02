import 'package:flutter/material.dart';

import 'contacts_info.dart';

class WebChatBar extends StatelessWidget {
  const WebChatBar({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width*0.70,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
          color: Color(0xff101820)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1985&q=80'),
              ),
              SizedBox(width: MediaQuery.of(context).size.width*0.01,),
              Text(cntc[0]['name'].toString(), style: TextStyle(fontSize: 18),),
            ],
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.search, color: Colors.grey)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert , color: Colors.grey)),
            ],
          ),

        ],
      ),
    );
  }
}
