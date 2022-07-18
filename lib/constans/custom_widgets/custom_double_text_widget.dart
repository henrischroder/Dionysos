import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';

class CustomDoubleTextWidget extends StatelessWidget {
  const CustomDoubleTextWidget({
    Key? key,
    this.boxColor = Colors.grey,
    required this.title,
    this.titleSize = generellFontSize,
    this.titleColor = generellTitleColor,
    this.hintText = '',
    this.hintTextSize = generellFontSize,
    this.hintTextColor = generellhintTextColor,
    required this.title2,
    this.titleSize2 = generellFontSize,
    this.titleColor2 = generellTitleColor,
    this.hintText2 = '',
    this.hintTextSize2 = generellFontSize,
    this.hintTextColor2 = generellhintTextColor,
    this.stripSize = 1,
  }) : super(key: key);
  final Color boxColor;

  final String title;
  final double titleSize;
  final Color titleColor;
  final String hintText;
  final double hintTextSize;
  final Color hintTextColor;

  final String title2;
  final double titleSize2;
  final Color titleColor2;
  final String hintText2;
  final double hintTextSize2;
  final Color hintTextColor2;

  final double stripSize;
  static const generellFontSize = 15.0;
  static const generellTitleColor = Colors.white;
  static const generellhintTextColor = Colors.blueGrey;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
          child: Column(
            children: [
              GestureDetector(
                onTap: () {
                  print('#1');
                },
                child: Container(
                  color: boxColor,
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
                      Row(
                        children: [
                          Text(
                            hintText,
                            style: TextStyle(
                              color: hintTextColor,
                              fontSize: hintTextSize,
                            ),
                          ),
                          const RightArrowIcon(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: stripSize,
                  width: 500,
                  color: Colors.white,
                ),
              ),
              GestureDetector(
                onTap: () {
                  print('#2');
                },
                child: Container(
                  color: boxColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title2,
                        style: TextStyle(
                          fontSize: titleSize2,
                          color: titleColor2,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            hintText2,
                            style: TextStyle(
                              color: hintTextColor2,
                              fontSize: hintTextSize2,
                            ),
                          ),
                          const RightArrowIcon(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
