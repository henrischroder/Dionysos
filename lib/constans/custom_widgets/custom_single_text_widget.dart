import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';

class CustomSingleTextWidget extends StatelessWidget {
  const CustomSingleTextWidget({
    Key? key,
    this.boxColor = Colors.red,
    required this.title,
    this.titleSize = 15,
    this.titleColor = Colors.white,
  }) : super(key: key);
  final Color boxColor;
  final String title;
  final double titleSize;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          print('#1');
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5.0),
            color: boxColor,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 5,
                offset: const Offset(4, 3),
              ),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: titleSize,
                    color: titleColor,
                  ),
                ),
                const RightArrowIcon(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
