import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.widget , @required this.colour});
  final Widget widget;
  final Color colour;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: widget,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
          color: colour,
        ),

      ),
    );
  }
}