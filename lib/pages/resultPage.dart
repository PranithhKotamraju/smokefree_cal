import 'package:flutter/material.dart';
import 'package:smokefree_cal/components/constants.dart';
import 'package:smokefree_cal/components/reusable_card.dart';
import 'package:smokefree_cal/pages/input_page.dart';


class ResultPage extends StatelessWidget {
  ResultPage({  @required  this.weekResult,  @required this.monthResult,  @required this.yearResult});
  final String weekResult;
  final String monthResult;
  final String yearResult;

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
                    Text("Your Savings Per Week is",style: kAppBarTextStyle,),
                    Text(weekResult,style: kNumberTextStyle,),
                    Text("Your Savings Per Month is",style: kAppBarTextStyle,),
                    Text(monthResult,style: kNumberTextStyle,),
                    Text("Your Savings Per Year is",style: kAppBarTextStyle,),
                    Text(yearResult,style: kNumberTextStyle,),



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
