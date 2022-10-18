import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foodapp_ui/home_page.dart';
import 'package:foodapp_ui/single_item_page.dart';
import 'package:foodapp_ui/single_nav_bar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        SingleItemPage.id: (context) => SingleItemPage(),
        SingleNavBar.id: (context) => SingleNavBar(),
      },
    );
  }
}
