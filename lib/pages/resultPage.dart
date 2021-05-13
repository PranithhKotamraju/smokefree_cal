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
                  "IF YOU QUIT SMOKING TODAY",
                  style: kAppBarTextStyle,
                ),

              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: Color(0XFFFFFFFF),
                widget: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [

                  Expanded(
                      flex: 4,
                      child: Image.asset("lib/images/cig1.jpeg")),

                    Expanded(
                        flex: 1,
                        child: Text("Your Savings Per Week ",style: kSavingTextStyle,)),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(weekResult ,style: kResultTextStyle,),
                          Text('\$' ,style: kResultTextStyle,),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text("Your Savings Per Month ",style: kSavingTextStyle,)),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(monthResult ,style: kResultTextStyle,),
                          Text('\$' ,style: kResultTextStyle,),
                        ],
                      ),
                    ),
                    Expanded(
                        flex: 1,
                        child: Text("Your Savings Per Year ",style: kSavingTextStyle,)),
                    Expanded(
                      flex: 1,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(yearResult ,style: kResultTextStyle,),
                          Text('\$' ,style:kResultTextStyle ),
                        ],
                      ),
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
