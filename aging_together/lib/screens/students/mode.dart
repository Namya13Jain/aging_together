import 'package:aging_together/screens/students/domain.dart';

import 'disclaimer.dart';
import 'package:flutter/material.dart';

class mode extends StatefulWidget {
  static const String id = 'Mode';
  @override
  State<mode> createState() => _Mode();
}

class _Mode extends State<mode> {
  final formKey = GlobalKey<FormState>();
  String name = "Mode";
  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
          title: Text("Become a Mentor"),
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => domain()));
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 20,
              )),
        ),
        body: SingleChildScrollView(
            child: Center(
                child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 30.0),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Mode of Mentoring",
                              style: TextStyle(
                                  color: Color(0xff232222),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold)),
                          SizedBox(height: 10.0),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  padding: EdgeInsets.all(15.0),
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 30.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Text("Online",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff232222),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600)))),
                          SizedBox(height: 10.0),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  padding: EdgeInsets.all(15.0),
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 30.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Text("Offline Solo Sessions",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff232222),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600)))),
                          SizedBox(height: 10.0),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  padding: EdgeInsets.all(15.0),
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 30.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Text("Offline Group Sessions",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff232222),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600)))),
                          SizedBox(height: 10.0),
                          InkWell(
                              onTap: () {},
                              child: Container(
                                  padding: EdgeInsets.all(15.0),
                                  margin: EdgeInsets.symmetric(
                                      vertical: 5.0, horizontal: 30.0),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: Colors.grey,
                                    border: Border.all(color: Colors.black),
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                  child: Text("No Preferences",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff232222),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600)))),
                          SizedBox(height: 10.0),
                          Text(
                              "*Note that the travel expenses for the offline sessions will be covered by us",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  color: Color(0xff232222),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600)),
                          Padding(
                              padding: EdgeInsets.only(top: 20.0),
                              child: Center(
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                          elevation: 0,
                                          primary:
                                              Color.fromRGBO(8, 143, 143, 1)),
                                      onPressed: () {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    disclaimer()));
                                      },
                                      child: Container(
                                          width: double.infinity,
                                          child: Center(
                                              child: Text('Next',
                                                  style: TextStyle(
                                                    color: Colors.white,
                                                    fontWeight: FontWeight.bold,
                                                  )))))))
                        ])))));
  }
}
