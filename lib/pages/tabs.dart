import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:mysaid/pages/pageone.dart';
import 'package:mysaid/pages/pagetow.dart';
import 'package:mysaid/screen/login.dart';

class tabs extends StatefulWidget {
  @override
  State<tabs> createState() => _tabsState();
}

TableRow buildRow(List<String> cells) => TableRow(
      children: cells.map((cell) {
        return Padding(
          padding: const EdgeInsets.all(12),
          child: Center(child: Text(cell)),
        );
      }).toList(),
    );

class _tabsState extends State<tabs> {
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
                color: Color.fromRGBO( 50, 185, 215, 1),
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
        child: Column(
          children: [
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
            Container(
              width: 300,
              height: 150,
              child: Align(
                child: Text(
                  'bar code here',
                  style: TextStyle(
                    color: Colors.grey[500],
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.grey[800],
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Color(0xFF0268B2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: TabBar(
                            indicator: BoxDecoration(
                                color: Color.fromRGBO(50, 185, 215, 1),
                                borderRadius: BorderRadius.circular(8)),
                            tabs: [
                              Tab(text: 'فاتورة المبيعات'),
                              Tab(
                                text: 'فاتورة المشتريات',
                              ),
                            ]),
                      ),
                    ),
                    SizedBox(height: 15),
                    Container(
                      height: 200,
                      child: TabBarView(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                width: 1,
                                color: Colors.grey,
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                            child: Scrollbar(
                              child: ListView(
                                children: <Widget>[
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Table(
                                      border: TableBorder.symmetric(
                                          inside: BorderSide(
                                              width: 2, color: Colors.grey)),
                                      defaultVerticalAlignment:
                                          TableCellVerticalAlignment.middle,
                                      columnWidths: {
                                        0: FlexColumnWidth(4),
                                        1: FlexColumnWidth(2),
                                        2: FlexColumnWidth(4),
                                      },
                                      children: [
                                        buildRow([
                                          'العنصر',
                                          'الكمية',
                                          'السعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعر'
                                        ]),
                                        buildRow([
                                          'العنصر',
                                          'الكمية',
                                          'السعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعر'
                                        ]),
                                        buildRow([
                                          'العنصر',
                                          'الكمية',
                                          'السعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعرالسعر'
                                        ]),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            child: Scrollbar(
                              child: ListView(
                                children: <Widget>[
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Table(
                                      border: TableBorder.all(),
                                      children: [
                                        buildRow(['العنصر', 'الكمية', 'السعر']),
                                        buildRow(['العنصر', 'الكمية', 'السعر']),
                                        buildRow(['العنصر', 'الكمية', 'السعر']),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            DefaultTabController(
              length: 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                child: Column(
                  children: [
                    Container(
                      height: 48,
                      decoration: BoxDecoration(
                          color: Color(0xFF0268B2),
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(7.0),
                        child: TabBar(
                            indicator: BoxDecoration(
                                color: Color.fromRGBO(50, 185, 215, 1),
                                borderRadius: BorderRadius.circular(8)),
                            tabs: [
                              Tab(
                                text: 'إلغاء',
                              ),
                              Tab(
                                text: 'حفظ وطباعة',
                              ),
                            ]),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
