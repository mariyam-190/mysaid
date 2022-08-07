import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mysaid/screen/login.dart';
import 'package:mysaid/screen/pass.dart';
import 'package:mysaid/pages/pageone.dart';

class pagetow extends StatelessWidget {
  var defaultText = TextStyle(color: Colors.white);
  var linkText =
      TextStyle(color: Colors.white, decoration: TextDecoration.underline);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'said Lite',
      home: Scaffold(
        backgroundColor: Color(0xFF0268B2),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 60.0),
              ),
              CircleAvatar(
                radius: 80.0,
                backgroundImage: AssetImage('assets/images/12.png'),
              ),
              Container(
                margin: EdgeInsets.only(bottom: 20.0),
              ),
              Text(
                'Said Lite',
                style: TextStyle(
                  fontSize: 34.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NotoBold',
                ),
              ),
              Text(
                'المحاسبي',
                style: TextStyle(
                  fontSize: 34.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'NotoBold',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 85),
              ),
              Container(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  RaisedButton(
                    color: Colors.white,
                    hoverColor: Color.fromRGBO(50, 185, 215, 1),
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      'تسجيل جديد',
                      style: TextStyle(
                        color: Colors.blue[900],
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    onPressed: () {},
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20),
                  ),
                  RaisedButton(
                    color: Colors.white,
                    hoverColor: Color.fromRGBO(50, 185, 215, 1),
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: Text(
                      'تسجيل دخول',
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.blue[900],
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                ]),
              ),
              SizedBox(height: 50),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      icon: Icon(Icons.arrow_downward_rounded),
                      label: Text(
                        'اللغة : العربية',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 14.0,
                          fontFamily: 'NotoBold',
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => pageone()),
                        );
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                    SizedBox(height: 30),
                    TextButton(
                      child: Text(
                        'التواصل مع الدعم ',
                        style: TextStyle(
                          color: Colors.white,
                          decoration: TextDecoration.underline,
                          fontSize: 14.0,
                          fontFamily: 'NotoBold',
                        ),
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                                  backgroundColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  actions: [
                                    Container(
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.only(top: 480),
                                          ),
                                          RaisedButton(
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                 Text(
                                              ' 00966 55 444 3333   مكالمة',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromRGBO(
                                                    50, 185, 215, 1),
                                                fontFamily: 'NotoBold',
                                              ),
                                            ), // <-- Text
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Icon(
                                                  // <-- Icon
                                                  Icons.phone,color: Color(0xFF0268B2),
                                                  size: 24.0,
                                                ),
                                              ],
                                            ),
                                            color: Colors.white,
                                            hoverColor: Colors.blue[500],
                                            padding: EdgeInsets.fromLTRB(
                                                30, 20, 30, 20),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                         
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                          Container(
                                            margin: EdgeInsets.only(top: 35),
                                          ),
                                          RaisedButton(
                                            color: Colors.white,
                                            hoverColor: Colors.blue[500],
                                            padding: EdgeInsets.fromLTRB(
                                                127, 20, 127, 20),
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10))),
                                            child: Text(
                                              'إلغاء',
                                              style: TextStyle(
                                                fontSize: 14.0,
                                                fontWeight: FontWeight.w700,
                                                color: Color.fromRGBO(
                                                    50, 185, 215, 1),
                                                fontFamily: 'NotoBold',
                                              ),
                                            ),
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ));
                      },
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
