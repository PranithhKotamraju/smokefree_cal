import 'package:flutter/cupertino.dart';
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
                colour: Color(0XFF122223),
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                  //
                  // Expanded(child: Image.asset("lib/images/cig1.jpeg")),

                    Text("Your Savings Per Week ",style: kAppBarTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(weekResult ,style: kResultTextStyle,),
                        Text('\$' ,style: kResultTextStyle,),
                      ],
                    ),
                    Text("Your Savings Per Month ",style: kAppBarTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(monthResult ,style: kResultTextStyle,),
                        Text('\$' ,style: kResultTextStyle,),
                      ],
                    ),
                    Text("Your Savings Per Year ",style: kAppBarTextStyle,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(yearResult ,style: kResultTextStyle,),
                        Text('\$' ,style: kResultTextStyle,),
                      ],
                    ),



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
