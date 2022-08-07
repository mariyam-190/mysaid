
import 'package:flutter/material.dart';
import 'package:mysaid/pages/pagetow.dart';

class pageone extends StatelessWidget {
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'said Lite',
      home: Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage('assets/images/bg.png') ,
            fit:BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.stretch,
          children: [
         
               TextButton(
                child:  Text("Said Lite المحاسبي",
                  style: TextStyle(
                    color: Colors.white,
                
                    fontWeight: FontWeight.w600,
                    fontSize:53 ,
                      fontFamily: 'NotoBold',

                  ),
                   textAlign: TextAlign.center
                ),
                onPressed: () {
                 Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => pagetow()),
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
              ),
          ],
          ),
      ),
    ),
    );
  }
  

}