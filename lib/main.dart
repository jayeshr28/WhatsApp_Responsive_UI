import 'package:flutter/material.dart';
import 'package:whatsapp_clone/responsive/mobile_layout.dart';
import 'package:whatsapp_clone/responsive/resposive_layout.dart';
import 'package:whatsapp_clone/responsive/web_layout.dart';
import 'package:whatsapp_clone/themes/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Whatsapp Clone',
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: Color(0xff002030),
          appBarTheme: AppBarTheme(color: Color(0xff101820))
        ),
        home:const ResponsiveLayout(webLayout: WebLayout(),mobileLayout: MobileLayout(),)
    );
  }
}