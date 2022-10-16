import 'package:flutter/material.dart';

class InactiveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration: BoxDecoration(
        color: Colors.white,
        shape: BoxShape.circle,
        border: Border.all(
          color: Color(0xffff6267),
        ),
      ),
    );
  }
}
