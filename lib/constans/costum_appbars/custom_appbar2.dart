import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/custom_icons/left_arrow_icon.dart';

class CustomAppbar2 extends StatelessWidget {
  const CustomAppbar2({
    Key? key,
    required this.appBarTitle,
    this.appBarColor = Colors.grey,
    this.appBarTitleColor = Colors.white,
  }) : super(key: key);
  final String appBarTitle;
  final Color appBarColor;
  final Color appBarTitleColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: appBarColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                print('Back'); // Back to last page
              },
              child: LeftArrowIcon(
                iconColor: appBarTitleColor,
              ),
            ),
            Text(
              appBarTitle,
              style: TextStyle(
                fontSize: 25,
                color: appBarTitleColor,
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
