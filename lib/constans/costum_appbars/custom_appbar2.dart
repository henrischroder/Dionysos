import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/left_arrow_icon.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);
  final String appBarTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black.withOpacity(0.5),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                print('Back'); // Back to last page
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
            Container(
              width: 10,
            )
          ],
        ),
      ),
    );
  }
}
