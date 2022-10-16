import 'package:flutter/material.dart';

class ActiveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 15,
      width: 15,
      decoration:
          BoxDecoration(color: Color(0xffff6267), shape: BoxShape.circle),
    );
  }
}
