import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:mysaid/screen/login.dart';
import 'package:mysaid/screen/pass.dart';
import 'package:mysaid/screen/create-pass.dart';
import 'package:mysaid/pages/pageone.dart';



class Otp extends StatelessWidget {
  var defaultText = TextStyle(color: Colors.white);
  var linkText =
      TextStyle(color: Colors.white, decoration: TextDecoration.underline);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0268B2),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(top: 50),
            ),
            Text(
              ' OTP كود التحقق ',
              style: TextStyle(
                fontSize: 29.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 20),
            ),
            SizedBox(
              width: 280,
              child: Text(
                ' تم إرسال كود التحقق إلى الرقم +966 555 111 999',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20.0,
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
                  submitButton(),
                ],
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              child: Text(
                'إرسال رمز التحقق مرة أخرى (00:00)',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontSize: 15.0,
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
            SizedBox(height: 10),
            TextButton(
              child: Text(
                'تغيير رقم الجوال',
                style: TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  fontSize: 15.0,
                ),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15))),
                          title: Center(
                            child: Text(
                              'هل تريد  تغيير رقم الجوال بالفعل؟',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22.0,
                                color: Colors.blue[700],
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          actions: [
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  RaisedButton(
                                    color: Colors.white,
                                    hoverColor: Colors.blue[500],
                                    padding:
                                        EdgeInsets.fromLTRB(50, 10, 50, 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Text(
                                      'لا',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blue[800],
                                      ),
                                    ),
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(right: 25),
                                  ),
                                  RaisedButton(
                                    color: Colors.white,
                                    hoverColor: Colors.blue[500],
                                    padding:
                                        EdgeInsets.fromLTRB(50, 10, 50, 10),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(10))),
                                    child: Text(
                                      'نعم',
                                      style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700,
                                        color: Colors.blue[800],
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
            ),
          ],
        ),
      ),
    );
  }
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
          labelText: ' 5 5 4 4 5 4 ',
          prefix: Padding(
            padding: EdgeInsets.only(right: 40),
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

Widget submitButton() {
  return RaisedButton(
    padding: EdgeInsets.fromLTRB(140, 15, 140, 15),
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(25))),
    color: Color.fromRGBO(50, 185, 215, 1),
    child: Text(
      'التالي',
      style: TextStyle(
        color: Colors.white,
        fontSize: 20.0,
      ),
    ),
    onPressed: () {

    
      
    },
  );
}
