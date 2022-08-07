
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mysaid/screen/login.dart';
import 'package:mysaid/screen/pass.dart';
import 'package:mysaid/pages/pageone.dart';



class Munsha extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'said Lite',
    
      home: Scaffold(
    backgroundColor: Color(0xFF0268B2),
      body: SafeArea(
        child: Column(
           
          children: [

            
Container(
  height: 120,
  width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
        
            borderRadius: BorderRadius.circular(16),
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
     child:
     Center(child:     
       Text("صفحة المنشأة" ,
style: TextStyle(
  fontSize: 24.0,
  color:Colors.blue[800],
  fontWeight:FontWeight.bold,
),
),
           ),
),
Container(
  height: 80,
  width: MediaQuery.of(context).size.width,
    color: Colors.blue[800],
),

Container(
  width: MediaQuery.of(context).size.width,
    color: Colors.white,


  child: Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
             
              Container(
                 child: Row(
                  
            mainAxisAlignment:MainAxisAlignment.spaceBetween,
            children: [
    
            Icon(Icons.home_filled),
  TextButton(
                       
                child: Text(
                 'معلومات المنشأة'  ,
                  style: TextStyle(
                    color: Colors.blue[900],
                    fontSize: 20.0,
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
                  padding: EdgeInsets.symmetric(horizontal: 16.0),
                ),
                
              ),

const Icon(Icons.home_filled),
    Container(
  decoration: BoxDecoration(
    border: Border(
            top: BorderSide(width: 16.0, color: Colors.lightBlue.shade600),
            bottom: BorderSide(width: 16.0, color: Colors.lightBlue.shade900),
          ),
          color: Colors.red[900],  // red as border color
    ),
  ),
],
),
   
       

    ),   
    
       ]
         ),
              ),


        ]

              ),
        ),
        ),
        );
  }
}