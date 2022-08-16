import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/left_arrow_icon.dart';

class CustomAppbar3 extends StatelessWidget {
  const CustomAppbar3({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Container(
      height: newHeight / 16,
      color: Colors.black.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context); // Back to last page
              },
              child: const LeftArrowIcon(),
            ),
            Text(
              appBarTitle,
              style: const TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () {
                print('Einstellungen'); // Einstellung allgemein (settings_view)
              },
              child: const Icon(
                Icons.settings_rounded,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
