import 'package:flutter/material.dart';
import 'package:mysaid/pages/pageone.dart';
import 'package:mysaid/screen/login.dart';
import 'package:mysaid/screen/otp.dart';

class Pass extends StatefulWidget {
  createState() {
    return PassState();
  }
}

class PassState extends State<Pass> {
  Widget build(context) {
    return MaterialApp(
      title: 'said Lite - Login',
      home: Scaffold(
        backgroundColor: Color(0xFF0268B2),
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Said Lite',
                style: TextStyle(
                  fontSize: 34.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Amatic',
                ),
              ),
              Text(
                'المحاسبي',
                style: TextStyle(
                  fontSize: 34.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Amatic',
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 60),
              ),
              Text(
                'إستعادة كلمة المرور',
                style: TextStyle(
                  fontSize: 19.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Amatic',
                ),
              ),
              Form(
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                    ),
                    MobileField(),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                    ),
                    submitButton(),
                  ],
                ),
              ),
               SizedBox(height: 45),
              TextButton(
                child: Text(
                  'الرجوع إلى صفحة تسجيل الدخول',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                style: TextButton.styleFrom(
                  primary: Colors.white,
                ),
              ),

               SizedBox(height: 65),
              TextButton.icon(
                icon: Icon(Icons.arrow_downward_rounded),
                label: Text('اللغة : العربية',
                  style: TextStyle(
                    color: Colors.white,
                    decoration: TextDecoration.underline,
                    fontSize: 16.0,
                  ),),
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
                    fontSize: 16.0,
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
                                ),
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

  Widget MobileField() {
    return SizedBox(
      width: 350.0,
      child: TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.only(top: 40.0),
            fillColor: Colors.white,
            filled: true,
            border: new OutlineInputBorder(
              borderRadius: const BorderRadius.all(
                const Radius.circular(8.0),
              ),
              borderSide: new BorderSide(
                color: Colors.transparent,
                width: 1.0,
              ),
            ),
           prefix: Padding(padding: EdgeInsets.only(right:40),
  child:Text('+966'),
  ),
            labelStyle: new TextStyle(
                color: Colors.grey[500],
                fontSize: 16.0,
                fontWeight: FontWeight.bold)),
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.grey,
        ),
      ),
    );
  }

  

 Widget submitButton() {
       return 
    ElevatedButton(
      child: Text('إرسال',
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'NotoBold',
          )),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(3.5),
        backgroundColor:
            MaterialStateProperty.all(Color.fromRGBO(50, 185, 215, 1)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(150, 20, 150, 20)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ),
      onPressed: () {
         Navigator.push(context,
     MaterialPageRoute(
      builder:(context) =>Otp(),
      ),);
      
      },
    );
  }
}