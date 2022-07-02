import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width*0.30,
      padding: const EdgeInsets.all(10),
      decoration: const BoxDecoration(
        color: Color(0xff101820)
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
         const CircleAvatar(
            radius: 20,
            backgroundImage: NetworkImage('https://images.unsplash.com/photo-1529665253569-6d01c0eaf7b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1985&q=80'),
          ),
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.comment, color: Colors.grey)),
              IconButton(onPressed: (){}, icon: Icon(Icons.more_vert , color: Colors.grey)),
            ],
          ),

        ],
      ),
    );
  }
}
