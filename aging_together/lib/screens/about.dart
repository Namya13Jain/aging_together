import 'package:flutter/material.dart';
import 'package:unicons/unicons.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({super.key});
  //for drawer text
  static const TextStyle drawerText = TextStyle(
      color: Color.fromARGB(255, 35, 34, 34),
      fontSize: 17,
      fontWeight: FontWeight.w600);
  //for body text
  static const TextStyle bodyText = TextStyle(
      color: Color.fromARGB(255, 35, 34, 34),
      fontSize: 17,
      fontWeight: FontWeight.w600);

  //fir hreading text
  static const TextStyle headText = TextStyle(
      color: Color.fromARGB(255, 35, 34, 34),
      fontSize: 24,
      fontWeight: FontWeight.bold);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 5,
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
        title: const Text(
          "About Us",
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
      body: SingleChildScrollView(
        child: Column(
          children: const [
            Image(
              image: AssetImage("assets/images/logo_no_bg.png"),
              height: 300,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 5),
              child: Text(
                "Aging Together is an innovative and user-friendly app designed to bridge the gap between the elderly and the younger generation. With a range of features, Aging Together is the go-to app for seniors looking for companionship, care, and support.",
                style: bodyText,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 2),
              child: Text(
                "Our Services",
                style: headText,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 5),
              child: Text(
                "Aging Together offers a wide range of services, including the ability to find a companion who can provide social interaction and emotional support. Whether you're looking for someone to chat with or someone to accompany you on walks, our app makes it easy to find the perfect match.",
                style: bodyText,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 7),
              child: Text(
                "Our app also provides access to caretakers on a rental basis, who can step in and provide the kind of care and attention that family members would normally offer. Whether it's help with day-to-day activities like grocery shopping or assistance with medical appointments, Aging Together is there to provide support.",
                style: bodyText,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 7),
              child: Text(
                "Aging Together also offers a unique mentorship program, connecting seniors with college students who can provide guidance and support as they learn new skills. College students can earn certificates of social internships, which will help them stand out when applying for jobs.",
                style: bodyText,
              ),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 7),
              child: Text(
                  "Our app also gives medication reminders that allows immediate family members to record and schedule personalized voice messages. It sends a notification back to the family members when the medicine has been taken.",
                  style: bodyText),
            ),
            Divider(
              color: Colors.grey,
            ),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12, bottom: 7, top: 7),
              child: Text(
                "We also offer the option for the immediate family members to track the location of their loved ones suffering from Alzeimers disease and dementia, through just their phones.",
                style: bodyText,
              ),
            ),
            SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
