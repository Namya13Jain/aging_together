import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Column(
      children: [
        SizedBox(
          height: 30,
          //width: double.infinity,
          child: GestureDetector(
            onTap: () => selectHandler(),
            child: Container(
              height: getProportionateScreenHeight(130),
              width: getProportionateScreenWidth(300),
              margin: const EdgeInsets.only(
                left: 20,
                right: 20,
                bottom: 10,
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: const Color.fromARGB(255, 199, 201, 201),
                  border: Border.all(
                    style: BorderStyle.solid,
                    color: Color.fromARGB(255, 57, 57, 57),
                  )),
              //textColor: Colors.black,
              child: Center(
                child: Text(
                  answerText,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        )
      ],
    );
  }
}
