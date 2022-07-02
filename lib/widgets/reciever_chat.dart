import 'package:flutter/material.dart';

class ReceiverChats extends StatelessWidget {
  final String message;
  final String time;
  const ReceiverChats({Key? key,required this.message,required this.time}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxWidth: MediaQuery.of(context).size.width-45,
        ),
        child: Card(
          elevation: 1,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
          color: Color(0xff002050),
          margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Stack(
            children: [Padding(
              padding: const EdgeInsets.only(top: 8,left: 14,right: 30,bottom: 25),
              child: Text(message, style: TextStyle(fontSize: 16),),
            ),
              Positioned(
                  bottom: 5,
                  right: 10,
                  child: Row(
                    children: [
                      Text(time, style: TextStyle(fontSize: 13, color: Colors.white60),),
                      SizedBox(width: 5,),
                    Icon(Icons.done_all, color: Colors.blue,)],
                  )
              )
        ]
          ),
        ),
      ),
    );
  }
}
