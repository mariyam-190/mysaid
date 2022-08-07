import 'package:flutter/material.dart';

import 'package:mysaid/pages/navbottom.dart';

class munsha1 extends StatelessWidget {
  const munsha1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFF0268B2),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
              ), //BorderRadius.vertical
              color: Color(0xFFFCFCFC),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(height: 60),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'صفحة المنشأة',
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontFamily: 'NotoBold',
                          color: Color(0xFF0268B2),
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 90),
          Container(
            width: double.infinity,
            height: 561,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(0),
                topLeft: Radius.circular(0),
              ),
              //BorderRadius.vertical
              color: Color(0xFFFCFCFC),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Color(0x33000000),
                  offset: Offset(0, 1),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 45),
              child: Column(
                children: [
                  SizedBox(height: 6),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 43,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(50, 185, 215, 1),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              color: Color(0xFF0268B2),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 120),
                            ),
                            Text(
                              'معلومات المنشأة',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF0268B2),
                              ),
                            ),
                            SizedBox(width: 33),
                            ImageIcon(
                              AssetImage('assets/icons/chat.png'),
                              color: Color.fromRGBO(50, 185, 215, 1),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 43,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color:Color.fromRGBO(50, 185, 215, 1),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              color: Color(0xFF0268B2),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 145),
                            ),
                            Text(
                              'إدارة الإشتراك',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color:  Color(0xFF0268B2),
                              ),
                            ),
                           SizedBox(width: 33),
                            ImageIcon(
                              AssetImage('assets/icons/text.png'),
                              color:Color.fromRGBO(50, 185, 215, 1),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, '/questions');
                    },
                    child: Container(
                      height: 43,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(50, 185, 215, 1),
                          ),
                        ),
                        color: Colors.white,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              color: Color(0xFF0268B2),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 120),
                            ),
                            Text(
                              'تغيير كلمة المرور',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF0268B2),
                              ),
                            ),
                            SizedBox(width: 33),
                            ImageIcon(
                              AssetImage('assets/icons/question-circle.png'),
                              color: Color.fromRGBO(50, 185, 215, 1),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      height: 43,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(50, 185, 215, 1),
                          ),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(right: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Icon(
                              Icons.chevron_left,
                              color: Color(0xFF0268B2),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 157),
                            ),
                            Text(
                              'حول البرنامج',
                              textDirection: TextDirection.rtl,
                              style: TextStyle(
                                fontFamily: 'NotoBold',
                                fontSize: 16,
                                fontWeight: FontWeight.w800,
                                color:  Color(0xFF0268B2),
                              ),
                            ),
                            SizedBox(width: 33),
                            ImageIcon(
                              AssetImage('assets/icons/whatsapp.png'),
                              color: Color.fromRGBO(50, 185, 215, 1),
                              size: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 190),
                  Text(
                    'تابعنا على قنوات التواصل التالية:',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                      fontFamily: 'NotoBold',
                      color: Color(0xFF0268B2),
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 38),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('assets/icons/instagram.png'),
                            color: Color.fromRGBO(50, 185, 215, 1),
                            size: 29,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('assets/icons/twitter.png'),
                            color: Color.fromRGBO(50, 185, 215, 1),
                            size: 29,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('assets/icons/linkedin.png'),
                            color: Color.fromRGBO(50, 185, 215, 1),
                            size: 29,
                          ),
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage('assets/icons/youtube.png'),
                            color: Color.fromRGBO(50, 185, 215, 1),
                            size: 29,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      //  bottomNavigationBar: navbottom(),
    );
  }
}
