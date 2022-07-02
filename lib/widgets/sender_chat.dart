import 'package:flutter/material.dart';

class SenderChats extends StatelessWidget {
  final String messages;
  final String times;
  const SenderChats({Key? key,required this.messages,required this.times}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width-45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          color: Colors.cyan,
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
              children: [
                Padding(
                padding: const EdgeInsets.only(top: 8,left: 10,right: 25,bottom: 22),
                child: Text(messages, style: TextStyle(fontSize: 16),),
              ),
                Positioned(
                    bottom: 2,
                    left: 10,
                    child: Row(
                      children: [
                        Text(times, style: TextStyle(fontSize: 13, color: Colors.white60),),
                  ]
                    )
                )
              ]
          ),
        ),
      ),
    );
  }
}
