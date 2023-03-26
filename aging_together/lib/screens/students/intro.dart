import 'package:flutter/material.dart';
import 'basicInfo.dart';

class intro extends StatefulWidget {
  static const String id = 'Introduction';
  @override
  State<intro> createState() => _Introduction();
}

class _Introduction extends State<intro> {
  final formKey = GlobalKey<FormState>();
  String name = "Introduction";
  //for drawer text
  static const TextStyle drawerText = TextStyle(
      color: Color.fromARGB(255, 35, 34, 34),
      fontSize: 17,
      fontWeight: FontWeight.w600);
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
              Navigator.pushNamed(context, 'role');
            },
            child: Icon(
              Icons.arrow_back_ios_new_rounded,
              color: Colors.white,
              size: 20,
            )),
      ),
      //drwaer

      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Center(
                child: Text("Why should you join us?",
                    style: TextStyle(
                        color: Color(0xff232222),
                        fontSize: 24,
                        fontWeight: FontWeight.bold))),
            const SizedBox(height: 10.0),
            Image.asset("assets/images/student.jpg", height: 200, width: 400),
            const SizedBox(height: 10.0),
            const Center(
              child: Text("1. Social Internship Certificate: ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                  "Internship not only add value to your CV but also helps gain insights into what it is like to be out there on the front line.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: const Text("2. Improved Socialization: ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                  "Senior citizens can provide valueable perspectives and experiences that you develop your social skills and broaden your understanding of diverse cultures and generations.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: const Text("3. Increased Patience and Understanding: ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                  "Mentoring senior can teach you to be more patient and understanding, especially when working with people who have different perspectives and lifestyles.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            const SizedBox(height: 10.0),
            Center(
              child: const Text("4. Personal Growth and Fullfillment: ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: const Text(
                  "Helping senior citizens can provide ypu with a sense of personal growth and fullfillment, as they make a positive impact on spmeone's life.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text("5. Improved Leadership Abilities: ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                  "Mentoring Seniors can help you develop your leadership abilities, including problem - solving, critical thinking and decision making.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Text("6. Professional Development: ",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                  "Mentoring Seniors can also provide you with professional development opportunities, including networking and development of new skills that can be useful in future careers.",
                  style: TextStyle(
                      color: Color.fromARGB(255, 35, 34, 34),
                      fontSize: 17,
                      fontWeight: FontWeight.w600)),
            ),
            SizedBox(height: 10.0),
            Padding(
                padding: EdgeInsets.only(top: 20.0, left: 30, right: 30),
                child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color.fromRGBO(8, 143, 143, 1)),
                        onPressed: () {
                          Navigator.pushNamed(context, 'learn');
                        },
                        child: Container(
                            width: double.infinity,
                            child: Center(
                                child: Text(
                              'Explore existing courses',
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            )))))),
            Padding(
                padding: EdgeInsets.only(top: 20.0, left: 30, right: 30),
                child: Center(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 0,
                            primary: Color.fromRGBO(8, 143, 143, 1)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => basicInfo()));
                        },
                        child: Container(
                            width: double.infinity,
                            child: Center(
                                child: Text('Start your Journey as a Mentor',
                                    style: TextStyle(
                                      fontSize: 18,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ))))))),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
