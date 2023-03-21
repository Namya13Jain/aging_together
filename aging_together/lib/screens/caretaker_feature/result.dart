import 'package:flutter/material.dart';
//import 'package:mental_health_app/screens/tabs_screen.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resultText = 'You did it!';
    if (resultScore <= 10) {
      resultText =
          'We have recorded your responses and will contact you soon to discuss further ';
    }
    /* if (resultScore <= 10) {
      resultText = 'These ups and downs are considered normal.';
    } else if (resultScore <= 16) {
      resultText = 'Mild mood disturbance.';
    } else if (resultScore <= 20) {
      resultText = 'Borderline clinical depression.';
    } else if (resultScore <= 30) {
      resultText = 'Moderate depression. Please contact the psychologist.';
    } else if (resultScore <= 40) {
      resultText = 'Severe depression. Please contact the psychologist.';
    } else {
      resultText = 'Extreme depression. Please contact the hospital.';
    } */
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: const TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 10,
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, 'care_taker');
            },
            child: Container(
              height: 40,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: const Color.fromRGBO(8, 143, 143, 1),
              ),
              child: const Center(
                child: Text(
                  'Next',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
