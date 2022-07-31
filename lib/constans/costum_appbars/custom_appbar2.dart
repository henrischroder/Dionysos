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
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Container(
      height: newHeight / 16,
      color: appBarColor,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context); //Geht besser aber fürs erste okay
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
