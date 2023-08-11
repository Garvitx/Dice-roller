import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.topRight;

class GradientColor extends StatelessWidget {
  const GradientColor(
    this.color1,
    this.color2, {
    Key? key,
  }) : super(key: key);

  const GradientColor.purple({Key? key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo,
        super(key: key);

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color1, color2],
            begin: startAlignment,
            end: endAlignment,
          ),
        ),
        child: const Center(child: DiceRoller()));
  }
}







// class GradientColor extends StatelessWidget {
//   const GradientColor({super.key, required this.colors});

//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [
//             Color.fromARGB(255, 204, 43, 94),
//             Color.fromARGB(255, 117, 58, 136)
//           ],
//           begin: startAlignment,
//           end: endAlignment,
//         ),
//       ),
//       child: Center(child: StyledText('My love')),
//     );
//   }
// }
