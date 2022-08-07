import 'package:flutter/material.dart';

import 'package:mysaid/pages/navbottom.dart';

class callCenter extends StatelessWidget {
  const callCenter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color(0xFF0268B2),
        body: SafeArea(
            child: Column(children: [
              Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                children:[
  Container(
            margin: const EdgeInsets.only(top: 130),
          ),
         
          Text(
            'المحادثة المباشرة',
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontFamily: 'NotoBold',
              color: Colors.white,
              fontSize: 18,
            ),
          ),
            Container(
            margin: const EdgeInsets.only(right: 10),
          ),
          
          ImageIcon(
            AssetImage('assets/icons/chat.png',), color:Colors.white,size: 40,
          ),
             Container(
            margin: const EdgeInsets.only(right: 10),
          ),
          Icon(
            Icons.chevron_right,
            color: Colors.white,
            size: 40.0,
            
          ),

                ]
              ),
        
          SizedBox(height: 0),
          Container(
            width: double.infinity,
            height: 561,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(25),
                topLeft: Radius.circular(25),
              ),
              //BorderRadius.vertical
              color: Color(0xFFFCFCFC),
              boxShadow: [
                BoxShadow(
                  blurRadius: 3,
                  color: Colors.red,
                  offset: Offset(0, 1),
                ),
              ],
            ),
          )
        ])));
  }
}
