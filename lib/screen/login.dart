import 'package:flutter/material.dart';
import 'package:mysaid/pages/pageone.dart';
import 'package:mysaid/screen/pass.dart';

class LoginScreen extends StatefulWidget {
  createState() {
    return LoginScreenState();
  }
}

class LoginScreenState extends State<LoginScreen> {
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
                Text(
                  'Said Lite',
                  style: TextStyle(
                    fontSize: 34.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'المحاسبي',
                  style: TextStyle(
                    fontSize: 34.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 15),
                ),
                Text(
                  'صفحة تسجيل دخول',
                  
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Form(
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 20),
                      ),
                      MobileField(),
                      Container(
                        margin: EdgeInsets.only(top: 18),
                      ),
                      passwordFeild(),
                      Container(
                        margin: EdgeInsets.only(top: 20, bottom: 20, right: 92),
                        child: Row(
                          children: [
                            MyCheckBox(),
                             Padding(padding: EdgeInsets.only(right: 9),),
                               Text(
                    'تذكرني',
                    
                      style: TextStyle(
                        fontFamily: 'NotoBold',
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    ),
                    SizedBox(width: 70),
                 
                          ],
                        ),
                      ),
                      submitButton(),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      TextButton(
                        child: Text(
                          'نسيت كلمة المرور ؟',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 14.0,
                          ),
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Pass()),
                          );
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      TextButton(
                        child: Text(
                          '   ليس لديك حساب ؟ إضغط هنا للتسجيل ',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 14.0,
                          ),
                        ),
                        onPressed: () {
                         
                        },
                        style: TextButton.styleFrom(
                          primary: Colors.white,
                        ),
                      ),
                      SizedBox(height: 35),
                      TextButton.icon(
                        icon: Icon(Icons.arrow_downward_rounded),
                        label: Text(
                          'اللغة : العربية',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 14.0,
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
                          'التواصل مع الدعم ',
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.underline,
                            fontSize: 14.0,
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
 labelText: 'رقم الجوال ',
            prefix: Padding(
              padding: EdgeInsets.only(right: 40),
              child: Text('+966'),
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
            labelText: 'كلمة المرور',
            labelStyle: new TextStyle(
              color: Colors.grey[300],
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
       return 
    ElevatedButton(
      child: Text('تسجيل الدخول',
          style: TextStyle(
            fontSize: 17,
            fontFamily: 'NotoBold',
          )),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(3.5),
        backgroundColor:
            MaterialStateProperty.all(Color.fromRGBO(50, 185, 215, 1)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(EdgeInsets.fromLTRB(113, 25, 113, 25)),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(11),
          ),
        ),
      ),
      onPressed: () {},
    );
  }
}
class MyCheckBox extends StatefulWidget {
  const MyCheckBox({Key? key}) : super(key: key);

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      width:25,
      height:26,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
        color: Colors.white,
        ),
      ),
      child: Checkbox(
        // shape: CircleBorder(),
        // side: BorderSide(color: Colors.white
        // ),
        checkColor: Colors.white,
        fillColor: MaterialStateProperty.all(Color(0xFF0268B2)),
        value: isChecked,
        onChanged: (bool? value) {
          setState(() {
            isChecked = value!;
          });
        },
      ),
    );
  }
}
