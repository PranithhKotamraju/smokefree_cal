

// Expanded(
// flex: 2,
// child: Padding(
// padding: const EdgeInsets.all(15.0),
// child: Container(
// decoration: BoxDecoration(
// borderRadius: BorderRadius.circular(22),
// color: Colors.blueGrey,
// ),
// child: Column(
//
// mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Center(
// child: Text(
// avgCig.toString(),
// style: kAppBarTextStyle,
// )),
// SizedBox(height: 10,),
// Row(
// mainAxisAlignment: MainAxisAlignment.center,
// crossAxisAlignment: CrossAxisAlignment.center,
// children: [
// RoundButton(
// icon: FontAwesomeIcons.minusCircle,
// onPress: () {
// setState(() {
// avgCig--;
// });
//
// },
// ),
// SizedBox(width: 15,),
// RoundButton(
// icon: FontAwesomeIcons.plusCircle,
// onPress: () {
// setState(() {
// avgCig++;
// });
//
// },
// ),
// ],
// ),
// ],
// ),
// ),
// ),
// ),