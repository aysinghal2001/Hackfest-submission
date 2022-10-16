import 'package:flutter/material.dart';

import 'active_button.dart';
import 'inactive_button.dart';

class CustomCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/images/onb1.gif'),
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
          Text(
            'Signup',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffFF5A5F),
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
                  'Complete your profile in ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'less than 5 minutes, qualify test',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'start providing freelance services',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ActiveButton(),
                SizedBox(
                  width: 20,
                ),
                InactiveButton(),
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
