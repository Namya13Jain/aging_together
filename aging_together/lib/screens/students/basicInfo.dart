import 'package:flutter/material.dart';
import 'domain.dart';

class basicInfo extends StatefulWidget {
  static const String id = 'Information';
  @override
  State<basicInfo> createState() => _Information();
}

class _Information extends State<basicInfo> {
  final formKey = GlobalKey<FormState>();
  String name = "Information";
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
                Navigator.pushNamed(context, 'intro');
              },
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                color: Colors.white,
                size: 20,
              )),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 30.0, vertical: 30.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Center(
                          child: Text("Basic Information",
                              style: TextStyle(
                                  color: Color(0xff232222),
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold))),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Name",
                              contentPadding:
                                  const EdgeInsets.only(bottom: 5.0, top: 12.5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      SizedBox(height: 10.0),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Email",
                              contentPadding:
                                  const EdgeInsets.only(bottom: 5.0, top: 12.5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      SizedBox(height: 10.0),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Date of Birth",
                              contentPadding:
                                  const EdgeInsets.only(bottom: 5.0, top: 12.5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      SizedBox(height: 10.0),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Gender",
                              contentPadding:
                                  const EdgeInsets.only(bottom: 5.0, top: 12.5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      SizedBox(height: 10.0),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Contact No. ",
                              contentPadding:
                                  const EdgeInsets.only(bottom: 5.0, top: 12.5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      SizedBox(height: 10.0),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Location",
                              contentPadding:
                                  const EdgeInsets.only(bottom: 5.0, top: 12.5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      SizedBox(height: 10.0),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Time you can dedicate (in hours)",
                              contentPadding:
                                  const EdgeInsets.only(bottom: 10, top: 80),
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
                                      primary: Color.fromRGBO(8, 143, 143, 1)),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => domain()));
                                  },
                                  child: Container(
                                      width: double.infinity,
                                      child: Center(
                                          child: Text('Next',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              )))))))
                    ]))));
  }
}
