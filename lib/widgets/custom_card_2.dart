import 'package:flutter/material.dart';
import 'active_button.dart';
import 'inactive_button.dart';

class CustomCard2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Text(
            'Explore Assignments',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFFFF5A5F),
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 15.0,
              horizontal: 30.0,
            ),
            child: Column(
              children: [
                Text(
                  'Explore number of assignments',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'and pick the best of your',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'choices',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Image(
            image: AssetImage('assets/images/onb2.gif'),
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InactiveButton(),
                SizedBox(
                  width: 20,
                ),
                ActiveButton(),
                SizedBox(
                  width: 20,
                ),
                InactiveButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
