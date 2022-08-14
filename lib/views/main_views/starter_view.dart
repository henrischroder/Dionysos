import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:projekt_dionysos/views/registration_views/login_view.dart';
import 'package:projekt_dionysos/views/registration_views/register_name_view.dart';

class StarterView extends StatefulWidget {
  const StarterView({Key? key}) : super(key: key);

  @override
  State<StarterView> createState() => _StarterViewState();
}

class _StarterViewState extends State<StarterView> {
  @override
  Widget build(BuildContext context) {
    var padding = MediaQuery.of(context).padding;
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double newHeight = height - padding.top - padding.bottom;
    return Scaffold(
      body: Stack(
        children: [
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginView(),
                    ),
                  );
                },
                child: Container(
                  height: newHeight,
                  width: width / 2,
                  color: Colors.red,
                  child: const Center(child: Text('Login')),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const RegisterNameView(),
                    ),
                  );
                },
                child: Container(
                  height: newHeight,
                  width: width / 2,
                  color: Colors.blue,
                  child: const Center(child: Text('Register')),
                ),
              ),
            ],
          ),
          Center(
            child: Container(
              height: width / 2,
              width: width / 2,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(100),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 5,
                    blurRadius: 5,
                    offset: const Offset(4, 3),
                  ),
                ],
              ),
              child: const Center(
                child: Text(
                  'Wilkommen bei Dionysos',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
