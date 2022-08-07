import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mysaid/pages/pageone.dart';
import 'package:mysaid/pages/pagetow.dart';
import 'package:mysaid/screen/login.dart';


class saleList extends StatefulWidget {
  @override
  State<saleList> createState() => _saleListState();
}

TableRow buildRow(List<String> cells) => TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell)),
        );
      }).toList(),
    );

class _saleListState extends State<saleList> {
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(
                Icons.menu,
                color: Color(0xFF0268B2),
                size: 45,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          title: Container(
            width: 300,
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'ميني سوبر ماركت',
                style: TextStyle(
                  color: Color(0xFF0268B2),
                  fontSize: 18.0,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          backgroundColor: Colors.white,
        ),
        drawer: Drawer(
          backgroundColor: Colors.white30,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 90),
                ),
                RaisedButton(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'قائمة المشتريات',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                          color: Colors.white,
                          fontFamily: 'NotoBold',
                        ),
                      ), // <-- Text
                      SizedBox(
                        width: 5,
                      ),
                    ],
                  ),
                  color: Color.fromRGBO(50, 185, 215, 1),
                  hoverColor: Color(0xFF0268B2),
                  padding: EdgeInsets.fromLTRB(70, 17, 70, 17),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                Container(
                  margin: EdgeInsets.only(top: 35),
                ),
                RaisedButton(
                  color: Color.fromRGBO(50, 185, 215, 1),
                  hoverColor: Color(0xFF0268B2),
                  padding: EdgeInsets.fromLTRB(90, 17, 90, 17),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10))),
                  child: Text(
                    'إضافة منتج',
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
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
        ),
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Column(children: [
          Container(
            margin: EdgeInsets.only(top: 10),
          ),
          Container(
            margin: EdgeInsets.only(top: 0),
          ),
          Container(
            width: 300,
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                'كاشير أحمد , مرحبا بك',
                style: TextStyle(
                    color: Color.fromRGBO(50, 185, 215, 1),
                    fontSize: 14.0,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Container(
            width: 300,
            child: Align(
              alignment: Alignment.topRight,
              child: Text(
                //  '09:41 pm , 2022/10/1 Fri'
                DateTime.now().toString(),
                style: TextStyle(
                  color: Colors.grey[500],
                  fontSize: 9.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 5),
          ),
          SizedBox(height: 20),
          Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(7),
                border: Border.all(color: Colors.grey.shade200),
                boxShadow: [
                  BoxShadow(
                    blurRadius: 3,
                    color: Color.fromARGB(51, 22, 21, 21),
                    offset: Offset(0, 1),
                  ),
                ],
              ),
              width: 160,
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 3, vertical: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'قائمة فواتير المبيعات ',
                              style: TextStyle(
                                color: Color(0xFF0268B2),
                                fontSize: 14.0,
                                fontWeight: FontWeight.w700,
                              ),
                            )
                          ],
                        )
                      ]))),

          //المبيعات

          Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey.shade200),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color.fromARGB(51, 22, 21, 21),
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: 95,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                     Icon(
                                    Icons.search,
                                    color: Colors.grey,
                                    size: 12.0,
                                  ),
                                  Text(
                                    'بحث برقم الفاتورة',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              )
                            ]))),
                Container(
                  margin: EdgeInsets.only(right: 20),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey.shade200),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color.fromARGB(51, 22, 21, 21),
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: 80,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                     Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color(0xFF0268B2),
                                    size: 12.0,
                                  ),
                                  Text(
                                    '2022/10/10',
                                    style: TextStyle(
                                      color: Color(0xFF0268B2),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  )
                                ],
                              )
                            ]))),
                Text('  إلى'),
                Container(
                  margin: EdgeInsets.only(right: 15),
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(7),
                      border: Border.all(color: Colors.grey.shade200),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3,
                          color: Color.fromARGB(51, 7, 6, 6),
                          offset: Offset(0, 1),
                        ),
                      ],
                    ),
                    width: 80,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 3, vertical: 5),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.calendar_today_outlined,
                                    color: Color(0xFF0268B2),
                                    size: 12.0,
                                  ),
                                  Text(
                                    '  2022/10/10',
                                    style: TextStyle(
                                      color: Color(0xFF0268B2),
                                      fontSize: 10.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              )
                            ]))),
                Text('  من'),
              ])),
        
          ])));
            
            }}