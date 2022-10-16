import 'package:flutter/material.dart';

import 'active_button.dart';
import 'inactive_button.dart';

class CustomCard3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Image(
            image: AssetImage('assets/images/onb3.gif'),
            height: 250,
            width: 250,
            fit: BoxFit.cover,
          ),
          Text(
            'Start Earning',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xffff5a5f),
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
                  'Work from the comfort of your',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  'home and start making money.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black54,
                  ),
                ),
                Text(
                  '',
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
                InactiveButton(),
                SizedBox(
                  width: 20,
                ),
                InactiveButton(),
                SizedBox(
                  width: 20,
                ),
                ActiveButton(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
