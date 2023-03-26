import 'package:aging_together/screens/students/basicInfo.dart';
import 'package:flutter/material.dart';
import 'mode.dart';

class domain extends StatefulWidget {
  static const String id = 'Domain';
  @override
  State<domain> createState() => _domain();
}

class _domain extends State<domain> {
  final formKey = GlobalKey<FormState>();
  String name = "Domain";
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
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => basicInfo()));
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
                          Text("Your Domain of Expertise",
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
                                  child: Text("Music",
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
                                  child: Text("Yoga",
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
                                  child: Text("English Language",
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
                                  child: Text("DIY",
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: Color(0xff232222),
                                          fontSize: 24,
                                          fontWeight: FontWeight.w600)))),
                          SizedBox(height: 10.0),
                          TextField(
                              textAlign: TextAlign.left,
                              decoration: InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  labelText: "Others",
                                  contentPadding: const EdgeInsets.only(
                                      bottom: 5.0, top: 12.5),
                                  focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(color: Colors.black),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(color: Colors.white),
                                  ))),
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
                                                builder: (context) => mode()));
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
