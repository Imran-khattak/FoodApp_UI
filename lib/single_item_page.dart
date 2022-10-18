import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodapp_ui/single_nav_bar.dart';

class SingleItemPage extends StatelessWidget {
  const SingleItemPage({Key? key}) : super(key: key);
  static String id = 'single_item_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff232227),
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.only(top: 25, left: 10, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios_new,
                    color: Colors.white,
                    size: 32,
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    CupertinoIcons.cart_fill,
                    color: Colors.white,
                    size: 32,
                  ),
                )
              ],
            ),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Image.asset(
                  'images/bg.png',
                  height: MediaQuery.of(context).size.height / 1.7,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              height: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hot & Fresh Burgur',
                        style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Icon(
                                CupertinoIcons.minus,
                                size: 20,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            '2',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Container(
                              alignment: Alignment.center,
                              width: 30,
                              height: 30,
                              decoration: BoxDecoration(
                                color: Colors.white,
                              ),
                              child: Icon(
                                CupertinoIcons.plus,
                                size: 20,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'We bring you the burger with cheese served with onion,cold drink and fries.We bring you the burger with cheese served with onion,cold drink and fries.',
                  style: TextStyle(fontSize: 18, color: Colors.white60),
                )
              ],
            )
          ],
        ),
      )),
      bottomNavigationBar: SingleNavBar(),
    );
  }
}
