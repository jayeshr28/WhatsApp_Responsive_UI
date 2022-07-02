import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'contacts_info.dart';

class ContactList extends StatelessWidget {
  const ContactList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
        itemCount: cntc.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              InkWell(
                onTap: (){},
                child: ListTile(
        title: Text(cntc[index]['name'].toString(), style: TextStyle(fontSize: 18, color: Colors.white)),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(cntc[index]['message'].toString(), style: TextStyle(fontSize: 16, ),),
                  ),
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(cntc[index]['dp'].toString()),
                ),
                  trailing: Text(cntc[index]['time'].toString(), style: TextStyle(fontSize: 13, color: Colors.grey),),
      ).py4(),
              ),
              const Divider(
                color: Colors.grey,
                indent: 80,
              ).pOnly(right: 10)
            ],
          );
    }).py8();
  }
}
