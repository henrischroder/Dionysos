import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';

class CustomQaudrupleTextWidget extends StatelessWidget {
  const CustomQaudrupleTextWidget({
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
    required this.title3,
    this.titleSize3 = generellFontSize,
    this.titleColor3 = generellTitleColor,
    this.hintText3 = '',
    this.hintTextSize3 = generellFontSize,
    this.hintTextColor3 = generellhintTextColor,
    required this.title4,
    this.titleSize4 = generellFontSize,
    this.titleColor4 = generellTitleColor,
    this.hintText4 = '',
    this.hintTextSize4 = generellFontSize,
    this.hintTextColor4 = generellhintTextColor,
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

  final String title3;
  final double titleSize3;
  final Color titleColor3;
  final String hintText3;
  final double hintTextSize3;
  final Color hintTextColor3;

  final String title4;
  final double titleSize4;
  final Color titleColor4;
  final String hintText4;
  final double hintTextSize4;
  final Color hintTextColor4;

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
                  print('#3');
                },
                child: Container(
                  color: boxColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title3,
                        style: TextStyle(
                          fontSize: titleSize3,
                          color: titleColor3,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            hintText3,
                            style: TextStyle(
                              color: hintTextColor3,
                              fontSize: hintTextSize3,
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
                  print('#4');
                },
                child: Container(
                  color: boxColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title4,
                        style: TextStyle(
                          fontSize: titleSize4,
                          color: titleColor4,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            hintText4,
                            style: TextStyle(
                              color: hintTextColor4,
                              fontSize: hintTextSize4,
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
