import 'package:flutter/material.dart';
import 'package:projekt_dionysos/constans/costum_appbars/custom_appbar2.dart';
import 'package:flutter/cupertino.dart';

class RegisterBirthdayView extends StatefulWidget {
  const RegisterBirthdayView({Key? key}) : super(key: key);

  @override
  State<RegisterBirthdayView> createState() => _RegisterBirthdayViewState();
}

class _RegisterBirthdayViewState extends State<RegisterBirthdayView> {
  late final TextEditingController _birthday;

  DateTime date = DateTime(2022, 10, 26);

  @override
  void initState() {
    _birthday = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _birthday.dispose();
    super.dispose();
  }

  void _showDialog(Widget child) {
    showCupertinoDialog(
      context: context,
      builder: (BuildContext context) => Container(
        height: 216,
        padding: const EdgeInsets.only(top: 6.0),
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        // Background color
        color: CupertinoColors.systemBackground.resolveFrom(context),
        child: SafeArea(
          top: false,
          child: child,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Column(
        children: [
          const CustomAppbar2(
            appBarTitle: 'Wann hast du Geburtstag?',
            appBarColor: Colors.white,
            appBarTitleColor: Colors.black,
          ),
          Padding(
            padding: EdgeInsets.all(width / 6),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    _showDialog(
                      CupertinoDatePicker(
                        initialDateTime: date,
                        mode: CupertinoDatePickerMode.date,
                        onDateTimeChanged: (DateTime newDate) {
                          setState(() {
                            date = newDate;
                          });
                        },
                      ),
                    );
                  },
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      'Geburtstag',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 15,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: _DatePickerItem(
                    children: [
                      const Text('date'),
                      CupertinoButton(
                        // Display a CupertinoDatePicker in date picker mode.
                        onPressed: () => _showDialog(
                          CupertinoDatePicker(
                            initialDateTime: date,
                            mode: CupertinoDatePickerMode.date,
                            use24hFormat: true,
                            // This is called when the user changes the date.
                            onDateTimeChanged: (DateTime newDate) {
                              setState(() => date = newDate);
                            },
                          ),
                        ),
                        // In this example, the date value is formatted manually. You can use intl package
                        // to format the value based on user's locale settings.
                        child: Text(
                          '${date.month}-${date.day}-${date.year}',
                          style: const TextStyle(
                            fontSize: 22.0,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: newHeight / 7),
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        print('Weiter');
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 125, 206, 117),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              spreadRadius: 5,
                              blurRadius: 5,
                              offset: const Offset(4, 3),
                            ),
                          ],
                        ),
                        height: newHeight / 16,
                        width: width * 0.5,
                        child: const Center(
                          child: Text(
                            'Weiter',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _DatePickerItem extends StatelessWidget {
  const _DatePickerItem({required this.children});

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        border: Border(
          top: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: CupertinoColors.inactiveGray,
            width: 0.0,
          ),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: children,
        ),
      ),
    );
  }
}
