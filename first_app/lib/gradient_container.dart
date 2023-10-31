import 'package:first_app/dice_roller.dart';
import 'package:flutter/material.dart';

const startAlingment = Alignment.topLeft;
const endAlingment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  final Color color1;
  final Color color2;
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlingment,
          end: endAlingment,
        ),
      ),
      child:  const Center(
          child: DiceRoller(),
      ),
    );
  } 
}
// class GradientContainer extends StatelessWidget {
//   const GradientContainer({required this.colors, super.key});

//   final List<Color> colors;
//   @override
//   Widget build(context) {
//     return Container(
//       decoration:  BoxDecoration(
//         gradient: LinearGradient(
//           colors:colors,
//           begin: startAlingment,
//           end: endAlingment,
//         ),
//       ),
//       child: const Center(
//         child: StyledText(
//           'Making Flutter to Apps!',
//         ),
//       ),
//     );
//   }
// }
