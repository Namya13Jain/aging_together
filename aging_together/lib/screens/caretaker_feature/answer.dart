import 'package:aging_together/screens/caretaker_feature/size_configs.dart';
import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: getProportionateScreenHeight(80),
            width: getProportionateScreenWidth(400),
            child: GestureDetector(
              onTap: () => selectHandler(),
              child: Container(
                // height: 130,
                // width: getProportionateScreenWidth(300),
                margin: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    shape: BoxShape.rectangle,
                    color: const Color.fromARGB(255, 199, 201, 201),
                    border: Border.all(
                      style: BorderStyle.solid,
                      color: Color.fromARGB(255, 57, 57, 57),
                    )),
                //textColor: Colors.black,
                child: Center(
                  child: Container(
                    padding: EdgeInsets.only(left: 4, right: 4),
                    margin: EdgeInsets.only(left: 3, right: 3),
                    child: Text(
                      answerText,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
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
      ),
    );
  }
}
