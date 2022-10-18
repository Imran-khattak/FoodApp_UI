import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/home_nav_bar.dart';
import 'package:foodapp_ui/items_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  static String id = 'home_page';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        backgroundColor: const Color(0xff232227),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.sort_rounded,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              // const Padding(
              //     padding: EdgeInsets.symmetric(horizontal: 15),
              //     child: Text(
              //       'Hot & Fast Food',
              //       style: TextStyle(
              //           color: Colors.white,
              //           fontSize: 32,
              //           fontWeight: FontWeight.bold),
              //     )),
              Row(
                children: [
                  Padding(padding: EdgeInsets.symmetric(horizontal: 8)),
                  // const Text(
                  //   'Hot & Fast Food',
                  //   style: TextStyle(
                  //       color: Colors.white,
                  //       fontSize: 30,
                  //       fontWeight: FontWeight.bold),
                  // ),
                  // const SizedBox(
                  //   width: 5,
                  // ),
                  AnimatedTextKit(
                    animatedTexts: [
                      TypewriterAnimatedText('Hot & Fast Food',
                          speed: Duration(milliseconds: 700),
                          textStyle: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold)),
                      TypewriterAnimatedText('Burger',
                          speed: Duration(milliseconds: 700),
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TypewriterAnimatedText('Pizza',
                          speed: Duration(milliseconds: 700),
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TypewriterAnimatedText('Cheese',
                          speed: Duration(milliseconds: 700),
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      TypewriterAnimatedText('Pasta',
                          speed: Duration(milliseconds: 700),
                          textStyle: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                    ],
                    onTap: () {},
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  'Delievered on Time',
                  style: TextStyle(
                    color: Colors.white60,
                    fontSize: 22,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const TabBar(
                isScrollable: true,
                indicator: BoxDecoration(),
                labelStyle: TextStyle(fontSize: 20),
                labelPadding: EdgeInsets.symmetric(horizontal: 20),
                tabs: [
                  Tab(
                    text: 'Burger',
                  ),
                  Tab(text: 'Pizza'),
                  Tab(text: 'Cheese'),
                  Tab(
                    text: 'Pasta',
                  )
                ],
              ),
              Flexible(
                  flex: 1,
                  child: TabBarView(
                    children: [
                      ItemsPage(),
                      ItemsPage(),
                      ItemsPage(),
                      ItemsPage(),
                    ],
                  ))
            ],
          ),
        )),
        bottomNavigationBar: HomeNavBar(),
      ),
    );
  }
}
