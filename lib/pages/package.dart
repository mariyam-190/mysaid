import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'pageone.dart';
import '../screen/login.dart';
import '../screen/pass.dart';
import 'package:mysaid/pages/pageone.dart';

class Package extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'said Lite',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color(0xFF0268B2),
        body: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
              ),
              Text(
                'إختر الباقة المناسبة',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 200,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        "الباقة اليومية",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " ر.س  ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0268B2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Text(
                            "2 ",
                            style: TextStyle(
                              fontSize: 60,
                              color: Color(0xFF0268B2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    Text(
                      " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF0268B2),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(8),
                              bottomLeft: Radius.circular(8))),
                    ),
                    ElevatedButton(
                      child: Text('إشتراك',
                          style: TextStyle(
                            fontSize: 7,
                            fontFamily: 'NotoBold',
                          )),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(3.5),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(50, 185, 215, 1)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(55, 15, 55, 15)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 200,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        "الباقة الشهرية ",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " ر.س  ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0268B2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Text(
                            "50 ",
                            style: TextStyle(
                              fontSize: 60,
                              color: Color(0xFF0268B2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                 
                    Text(
                      " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xFF0268B2),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                       SizedBox(height: 8),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                    ),
                    ElevatedButton(
                      child: Text('إشتراك',
                          style: TextStyle(
                            fontSize: 7,
                            fontFamily: 'NotoBold',
                          )),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(3.5),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(50, 185, 215, 1)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(55, 15, 55, 15)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
              SizedBox(height: 5),
              Container(
                width: 200,
                height: 190,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      child: Text(
                        "الباقة السنوية",
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Color(0xFF0268B2),
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          " ر.س  ",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color(0xFF0268B2),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Center(
                          child: Text(
                            "500",
                            style: TextStyle(
                              fontSize: 60,
                              color: Color(0xFF0268B2),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 8),
                    
                    Text(
                      " تجدد الباقة تلقائيا عند نهاية الاشتراك ",
                      style: TextStyle(
                       fontSize: 12,
                        color: Color(0xFF0268B2),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                       SizedBox(height: 8),
                    Container(
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                    ),
                    ElevatedButton(
                      child: Text('إشتراك',
                          style: TextStyle(
                            fontSize: 7,
                            fontFamily: 'NotoBold',
                          )),
                      style: ButtonStyle(
                        elevation: MaterialStateProperty.all(3.5),
                        backgroundColor: MaterialStateProperty.all(
                            Color.fromRGBO(50, 185, 215, 1)),
                        foregroundColor:
                            MaterialStateProperty.all(Colors.white),
                        padding: MaterialStateProperty.all(
                            EdgeInsets.fromLTRB(55, 15, 55, 15)),
                        shape: MaterialStateProperty.all(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                      ),
                      onPressed: () {},
                    ),
                    SizedBox(height: 8),
                  ],
                ),
              ),
              SizedBox(height: 5),
            ],
          ),
        ),
      ),
    );
  }
}
