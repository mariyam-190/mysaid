import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:mysaid/pages/pageone.dart';
import 'package:mysaid/pages/pagetow.dart';
import 'package:mysaid/screen/login.dart';
import 'package:mysaid/pages/tabs.dart';

class navbottom extends StatefulWidget {
  const navbottom({Key? key}) : super(key: key);

  @override
  State<navbottom> createState() => _navbottomState();
}

class _navbottomState extends State<navbottom> {
  int currentTabs = 0;
  final List<Widget> screens = [pageone(), pagetow(), LoginScreen(), pageone()];
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = tabs();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      
       PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      
    
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 0,
        child: Container(
            height: 60,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MaterialButton(
                        minWidth: 100,
                        onPressed: () {
                          setState(() {
                            currentScreen = tabs();
                            currentTabs = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.shop_2_outlined,
                              color:
                                  currentTabs == 0 ? Color(0xFF0268B2) : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                      MaterialButton(
                        minWidth: 40,
                        onPressed: () {
                          setState(() {
                            currentScreen = LoginScreen();
                            currentTabs = 0;
                          });
                        },
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.headphones,
                              color:
                                  currentTabs == 0 ? Color(0xFF0268B2) : Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    MaterialButton(
                      minWidth: 100,
                      onPressed: () {
                        setState(() {
                          currentScreen = pagetow();
                          currentTabs = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.analytics,
                            color: currentTabs == 0 ? Color(0xFF0268B2) : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                    MaterialButton(
                      minWidth: 40,
                      onPressed: () {
                        setState(() {
                          currentScreen = tabs();
                          currentTabs = 0;
                        });
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.home,
                            color: currentTabs == 0 ? Color(0xFF0268B2) : Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ]),
                ])),
      ),
    );
  }
}
