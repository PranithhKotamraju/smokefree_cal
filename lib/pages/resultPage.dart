import 'package:flutter/material.dart';
import 'package:smokefree_cal/components/constants.dart';
import 'package:smokefree_cal/components/reusable_card.dart';
import 'package:smokefree_cal/pages/input_page.dart';

class ResultPage extends StatefulWidget {
  @override
  _ResultPageState createState() => _ResultPageState();
}

class _ResultPageState extends State<ResultPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'SMOKE FREE CALUCLATOR',
            style: kTextStyle,
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment:  CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Your Savings",
                  style: kNumberTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: Color(0XFF123123),
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Text(resultText.toUpperCase(),style: kResultTextStyle),
                    // Text(bmiResult,style: kNumberTextStyle),
                    // Text(interpretation.toUpperCase(),style: kLabelTextStyle),



                  ],
                ),
              ),
            ),
            BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              text: 'RE - GENERATE MY SAVINGS',
            ),

          ],
        ));
  }
}
