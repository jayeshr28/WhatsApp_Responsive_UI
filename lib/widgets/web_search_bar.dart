import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class WebSearchBar extends StatelessWidget {
  const WebSearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.08,
      width: MediaQuery.of(context).size.width*0.30,
      padding: const EdgeInsets.all(10),
      decoration:const BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.white60)
        ),
        color: Color(0xff101825)
    ),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.blueGrey,
          prefixIcon: Icon(Icons.search).py4(),
          hintStyle: TextStyle(fontSize: 14),
          hintText: 'Search or start new chat',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(width: 0,style: BorderStyle.none)
          ),
          contentPadding: const EdgeInsets.all(12)
        ),
      ),
    );
  }
}
