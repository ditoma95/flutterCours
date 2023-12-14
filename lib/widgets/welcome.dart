import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              "assets/images/moi.jpeg",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color.fromARGB(178, 9, 9, 9),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    "Chester",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: AutofillHints.addressCityAndState,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 260,
            ),
            child: Container(
                alignment: Alignment.topCenter,
                width: double.infinity,
                height: 450,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(73, 255, 255, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(20),
                  child: Text(
                    "The SafeArea widget is a must for today’s devices such as the iPhone X or Android devices with anotch (a partial cut-out obscuring the screen usually located on the top portion of the device). TheSafeArea widget automatically adds sufficient padding to the child widget to avoid intrusions by theoperating system. You can optionally pass minimum padding or a Boolean value to not enforce pad-ding on the top, bottom, left, or right.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}
