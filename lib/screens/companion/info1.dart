import 'start.dart';
import 'package:flutter/material.dart';
import 'info2.dart';

class info1 extends StatefulWidget {
  static const String id = 'Preferences';
  @override
  State<info1> createState() => _ProvideInfo();
}

class _ProvideInfo extends State<info1> {
  final formKey = GlobalKey<FormState>();
  String name = "Preferences";
  @override
  bool? male = false;
  bool? female = false;
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          centerTitle: true,
          elevation: 5,
          backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
          title: Text("Find Companion"),
          leading: GestureDetector(
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Start()));
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
                      Text("What's Your Gender",
                          style: TextStyle(
                              color: Color.fromARGB(255, 35, 34, 34),
                              fontSize: 17,
                              fontWeight: FontWeight.w600)),
                      CheckboxListTile(
                        value: male,
                        onChanged: (value) {
                          setState(() {
                            male = value;
                          });
                        },
                        activeColor: Colors.blue,
                        title: Text("Male",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ),
                      CheckboxListTile(
                        value: female,
                        onChanged: (value) {
                          setState(() {
                            female = value;
                          });
                        },
                        activeColor: Colors.blue,
                        title: Text("Female",
                            style: TextStyle(
                                color: Color.fromARGB(255, 35, 34, 34),
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      ),
                      Text("What's Your Age",
                          style: TextStyle(
                              color: Color.fromARGB(255, 35, 34, 34),
                              fontSize: 17,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 10.0),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Enter Your Age",
                              contentPadding:
                                  const EdgeInsets.only(bottom: 5.0, top: 12.5),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white),
                              ))),
                      Text("Why do you want a Companion?",
                          style: TextStyle(
                              color: Color.fromARGB(255, 35, 34, 34),
                              fontSize: 17,
                              fontWeight: FontWeight.w600)),
                      SizedBox(height: 10.0),
                      TextField(
                          textAlign: TextAlign.left,
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Enter the reason",
                              contentPadding: const EdgeInsets.only(
                                  bottom: 20.0, top: 80.0),
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
                                            builder: (context) => info2()));
                                  },
                                  child: Container(
                                      width: double.infinity,
                                      child: Center(
                                          child: Text(
                                        'Next Step',
                                        style: TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ))))))
                    ]))));
  }
}
