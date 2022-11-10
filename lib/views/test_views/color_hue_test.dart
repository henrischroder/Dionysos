import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:projekt_dionysos/constans/design_elements/boxshadows%20copy/boxshadow_shallow.dart';

class ColorHueTest extends StatefulWidget {
  const ColorHueTest({super.key});

  @override
  State<ColorHueTest> createState() => _ColorHueTestState();
}

class _ColorHueTestState extends State<ColorHueTest> {
  Color color = Color.fromARGB(255, 255, 209, 139);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color,
      body: Center(
          child: GestureDetector(
        onTap: () {
          print(color.value);
          color = Colors.red;
          setState(() {});
        },
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          width: 200,
          height: 200,
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(4, 4),
                inset: true,
              ),
              BoxShadow(
                color: Colors.white.withOpacity(0.4),
                spreadRadius: 2,
                blurRadius: 10,
                offset: const Offset(-4, -4),
                inset: true,
              ),
            ],
          ),
          child: Center(
            child: Text(
              'Hausparty',
              style: GoogleFonts.anton(
                  color: color.value < 4294955000 ? Colors.white : Colors.black,
                  fontSize: 40,
                  shadows: [
                    boxShadowShallow(),
                  ]),
            ),
          ),
        ),
      )),
    );
  }
}
