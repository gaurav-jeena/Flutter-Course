import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Box extends StatelessWidget {
  const Box({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      height: 400,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        image: const DecorationImage(
            image: NetworkImage(
                'https://media2.giphy.com/media/v1.Y2lkPTc5MGI3NjExNjk1MGRjYmU1MzEzOGFlM2M2MWRiOTVmYWQ4ZTBlNTk3YTI5ODZiYyZjdD1z/tKcprZBOQjURlzzbIT/giphy.gif')),
        shape: BoxShape.circle,
        //color: Colors.red,
        gradient: const LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Colors.red, Colors.blue, Colors.tealAccent]),
        boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.green)],
        border: Border.all(
          width: 4,
          color: Colors.black,
        ),
        //borderRadius: BorderRadius.circular(20)
      ),
      margin: const EdgeInsets.only(left: 50, top: 100),
      child: Center(
        child: Text(
          'Hello Flutter',
          style: GoogleFonts.pacifico(fontSize: 20, color: Colors.white),
        ),
      ),
    );
  }
}
