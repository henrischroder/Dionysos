import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/right_arrow_icon.dart';

class Custom7TextWidget extends StatelessWidget {
  const Custom7TextWidget({
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
    required this.title5,
    this.titleSize5 = generellFontSize,
    this.titleColor5 = generellTitleColor,
    this.hintText5 = '',
    this.hintTextSize5 = generellFontSize,
    this.hintTextColor5 = generellhintTextColor,
    required this.title6,
    this.titleSize6 = generellFontSize,
    this.titleColor6 = generellTitleColor,
    this.hintText6 = '',
    this.hintTextSize6 = generellFontSize,
    this.hintTextColor6 = generellhintTextColor,
    required this.title7,
    this.titleSize7 = generellFontSize,
    this.titleColor7 = generellTitleColor,
    this.hintText7 = '',
    this.hintTextSize7 = generellFontSize,
    this.hintTextColor7 = generellhintTextColor,
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

  final String title5;
  final double titleSize5;
  final Color titleColor5;
  final String hintText5;
  final double hintTextSize5;
  final Color hintTextColor5;

  final String title6;
  final double titleSize6;
  final Color titleColor6;
  final String hintText6;
  final double hintTextSize6;
  final Color hintTextColor6;

  final String title7;
  final double titleSize7;
  final Color titleColor7;
  final String hintText7;
  final double hintTextSize7;
  final Color hintTextColor7;

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
                  print('#5');
                },
                child: Container(
                  color: boxColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title5,
                        style: TextStyle(
                          fontSize: titleSize5,
                          color: titleColor5,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            hintText5,
                            style: TextStyle(
                              color: hintTextColor5,
                              fontSize: hintTextSize5,
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
                  print('#6');
                },
                child: Container(
                  color: boxColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title6,
                        style: TextStyle(
                          fontSize: titleSize6,
                          color: titleColor6,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            hintText6,
                            style: TextStyle(
                              color: hintTextColor6,
                              fontSize: hintTextSize6,
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
                  print('#7');
                },
                child: Container(
                  color: boxColor,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        title7,
                        style: TextStyle(
                          fontSize: titleSize7,
                          color: titleColor7,
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            hintText7,
                            style: TextStyle(
                              color: hintTextColor7,
                              fontSize: hintTextSize7,
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
