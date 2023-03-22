import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class CaretakerBooking extends StatelessWidget {
  const CaretakerBooking({super.key});

  static const TextStyle drawerText = TextStyle(
      color: Color.fromARGB(255, 35, 34, 34),
      fontSize: 17,
      fontWeight: FontWeight.w600);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
        title: const Text(
          "Book Caretaker",
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(
                UniconsLine.paragraph,
                color: Colors.white,
                size: 24,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      //drawer
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'vision');
              },
              child: const Image(
                image: AssetImage("assets/images/logo_no_bg.png"),
                height: 150,
              ),
            ),
            //home
            ListTile(
                leading: const Icon(
                  UniconsLine.home_alt,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Home',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'home_screen');
                }),
            //caretaker
            ListTile(
                leading: const Icon(
                  UniconsLine.schedule,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Book Caretaker',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'care_taker');
                }),
            //companion
            ListTile(
                leading: const Icon(
                  UniconsLine.chat_bubble_user,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Find companion',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'start');
                }),
            // Medical Reminders
            ListTile(
                leading: const Icon(
                  UniconsLine.clock,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Reminders',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'reminders');
                }),

            //Leraning Center
            ListTile(
                leading: const Icon(
                  UniconsLine.file_contract,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'Learn',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'learn');
                }),
            //About us
            ListTile(
                leading: const Icon(
                  UniconsLine.question_circle,
                  color: Color.fromARGB(255, 58, 57, 57),
                  size: 30,
                ),
                title: const Text(
                  'About Us',
                  style: drawerText,
                ),
                onTap: () {
                  Navigator.pushNamed(context, 'about_us');
                }),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(20),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15)),
            child: const Text(
              "Want a caretaker for helping you out?",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ),
          Image(
            image: const AssetImage("assets/images/caretaker.png"),
            height: getProportionateScreenHeight(250),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(15)),
            child: const Text(
              "Let us know your preferences better by filling out the answer to some questions so that we can help you get the right person.",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(
            height: getProportionateScreenHeight(30),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'questions');
            },
            child: Container(
              height: getProportionateScreenHeight(50),
              width: getProportionateScreenWidth(200),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: const Color.fromRGBO(8, 143, 143, 1),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 19, 194, 194),
                      blurRadius: 5,
                    ),
                  ]),
              child: const Center(
                child: Text(
                  "Continue",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
