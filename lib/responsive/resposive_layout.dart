import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive/mobile_layout.dart';
import 'package:whatsapp_clone/responsive/web_layout.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileLayout;
  final Widget webLayout;

  const ResponsiveLayout({Key? key, required this.mobileLayout,required this.webLayout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints){
     if(constraints.maxWidth > 900){
       return webLayout;
     }
     return mobileLayout;
    }
    );
  }
}
