import 'package:flutter/material.dart';
import 'package:mysaid/pages/pageone.dart';
import 'package:mysaid/screen/pass.dart';

class CreatePass extends StatefulWidget {
  createState() {
    return CreatePassState();
  }
}

class CreatePassState extends State<CreatePass> {
  Widget build(context) {
    return MaterialApp(
      title: 'said Lite - Login',
      home: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
         backgroundColor: Color(0xFF0268B2),
          body: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                ),
                Text(
                  'أنشيء كلمة المرور',
                  style: TextStyle(
                    fontSize: 35.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                      fontFamily: 'NotoBold',
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                ),
                SizedBox(
                  width: 300,
                  child: Text(
                    'يجب أن تكون كلمة المرور مكونة من 8 خانات تحتوي على حروف و أرقام',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 25),
                      ),
                      MobileField(),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                      ),
                      passwordFeild(),
                      Container(
                        margin: EdgeInsets.only(top: 38),
                      ),
                      submitButton(),
                    ],
                  ),
                ),
              ],
            ),
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
                color: Color.fromRGBO(0, 0, 0, 0),
                width: 1.0,
              ),
            ),
            labelText: '  كلمة المرور ',
            prefix: Padding(
              padding: EdgeInsets.only(left: 40),
              child: Text(
                '  كلمة المرور ',
              ),
            ),
            labelStyle: new TextStyle(
                color: Colors.grey[400],
                fontSize: 16.0,
                fontWeight: FontWeight.bold)),
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget passwordFeild() {
    return SizedBox(
      width: 350.0,
      child: TextFormField(
        
        obscureText: true,
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
            labelText: 'إدخال كلمة المرور مرة أخرى',
            labelStyle: new TextStyle(
              color: Colors.grey[400],
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
            )),
        style: TextStyle(
          fontSize: 20.0,
          color: Colors.grey,
        ),
      ),
    );
  }

  Widget submitButton() {
    return RaisedButton(
      padding: EdgeInsets.fromLTRB(150, 15, 150, 15),
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10))),
      color: Colors.blue[400],
      child: Text(
        'التالي',
        style: TextStyle(
          color: Colors.white,
          fontSize: 20.0,
        ),
      ),
      onPressed: () {},
    );
  }
}
