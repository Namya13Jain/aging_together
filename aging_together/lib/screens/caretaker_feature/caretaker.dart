import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:flutter/material.dart';

class CaretakerBooking extends StatefulWidget {
  const CaretakerBooking({super.key});

  @override
  State<CaretakerBooking> createState() => _CaretakerBookingState();
}

class _CaretakerBookingState extends State<CaretakerBooking> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0.8,
        backgroundColor: const Color.fromRGBO(8, 143, 143, 1),
        title: const Text(
          "Book Caretaker",
          style: TextStyle(
            fontSize: 20,
          ),
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
          Container(
            height: getProportionateScreenHeight(50),
            width: getProportionateScreenWidth(200),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color.fromRGBO(8, 143, 143, 1),
            ),
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
        ],
      ),
    );
  }
}
