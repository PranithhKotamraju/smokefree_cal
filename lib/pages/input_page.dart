import 'package:flutter/material.dart';
import 'package:smokefree_cal/components/constants.dart';
import 'package:smokefree_cal/components/reusable_card.dart';
import 'package:smokefree_cal/components/roundicon_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:smokefree_cal/pages/resultPage.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  int avgCig = 6;
  int ciginPack = 5;
  int cigCost = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Smoke Free Caluclator ",
            style: kAppBarTextStyle,
          ),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "How many cigarettes do you smoke on an average day?",
                style: kTextStyle,
                textAlign: TextAlign.center,
              ),
              Expanded(
                flex: 2,
                child: ReusableCard(
                  widget: Column(
                    children: [
                      Expanded(
                        child: Center(
                          child: Text(
                            avgCig.toString(),
                            style: kNumberTextStyle,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: RoundButton(
                                icon: FontAwesomeIcons.minusCircle,
                                onPress: () {
                                  setState(() {
                                    avgCig--;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RoundButton(
                                icon: FontAwesomeIcons.plusCircle,
                                onPress: () {
                                  setState(() {
                                    avgCig++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  colour: Colors.redAccent.shade200,
                ),
              ),
              Text(
                " How much does a pack of cigarettes cost?",
                style: kTextStyle,
                textAlign: TextAlign.center,
              ),
              Expanded(
                flex: 3,
                child: ReusableCard(
                  widget: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            cigCost.toString(),
                            style: kAppBarTextStyle,
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Text(
                            '\$',
                            style: kAppBarTextStyle,
                          ),
                        ],
                      ),
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          thumbColor: Colors.red,
                          activeTrackColor: Colors.blueGrey,
                          inactiveTrackColor: Colors.brown,
                          overlayColor: Colors.white,
                        ),
                        child: Slider(
                          label: 'SLIDER',
                          value: cigCost.toDouble(),
                          min: 10.0,
                          max: 100.0,
                          onChanged: (double newValue) {
                            setState(() {
                              cigCost = newValue.round();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                  colour: Colors.black26,
                ),
              ),
              Text(
                "How many cigarettes in a pack?",
                style: kTextStyle,
                textAlign: TextAlign.center,
              ),
              Expanded(
                flex: 2,
                child: ReusableCard(
                  widget: Column(
                    children: [
                      Expanded(
                        child: Center(
                            child: Text(
                          ciginPack.toString(),
                          style: kNumberTextStyle,
                        )),
                      ),
                      Expanded(
                        child: Row(
                          children: [
                            Expanded(
                              child: RoundButton(
                                icon: FontAwesomeIcons.minusCircle,
                                onPress: () {
                                  setState(() {
                                    ciginPack--;
                                  });
                                },
                              ),
                            ),
                            Expanded(
                              child: RoundButton(
                                icon: FontAwesomeIcons.plusCircle,
                                onPress: () {
                                  setState(() {
                                    ciginPack++;
                                  });
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  colour: Colors.redAccent.shade200,
                ),
              ),
              BottomButton(text: 'GENERATE THE SAVINGS',
              onTap:(){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ResultPage()));
              }
              ),
            ],
          ),
        ));
  }
}

class BottomButton extends StatelessWidget {
  BottomButton({@required this.text , @required this.onTap});

  final String text;
  final Function onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.amberAccent,
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Text(
              text,
              style: kBottomButtonTextStyle,
            ),
          )),
        ),
      ),
    );
  }
}
