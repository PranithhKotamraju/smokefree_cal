import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
  RoundButton({@required this.onPress, @required this.icon});
  final Function onPress;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(
        icon,
        color: Colors.white,
      ),
      fillColor: Color(0XFF1C1E48),
      shape: CircleBorder(),
      elevation: 6.0,
      constraints: BoxConstraints.tightForFinite(
        height: 50,
        width: 50,
      ),
    );
  }
}