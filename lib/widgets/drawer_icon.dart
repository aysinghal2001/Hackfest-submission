import 'package:flutter/material.dart';

class DrawerIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 20,
      decoration: BoxDecoration(color: Color(0xFFFFF0F3)),
      child: Column(
        children: [
          Row(
            children: [
              Square(),
              SizedBox(
                width: 2.5,
              ),
              Circle(),
              SizedBox(
                width: 2.5,
              ),
              Square(),
            ],
          ),
          SizedBox(
            height: 2.5,
          ),
          Row(
            children: [
              Circle(),
              SizedBox(
                width: 2.5,
              ),
              Square(),
              SizedBox(
                width: 2.5,
              ),
              Circle(),
            ],
          ),
          SizedBox(
            height: 2.5,
          ),
          Row(
            children: [
              Square(),
              SizedBox(
                width: 2.5,
              ),
              Circle(),
              SizedBox(
                width: 2.5,
              ),
              Square(),
            ],
          ),
        ],
      ),
    );
  }
}

class Circle extends StatelessWidget {
  const Circle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Color(
          0xFFFF5A5F,
        ),
      ),
    );
  }
}

class Square extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 5,
      width: 5,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(1)),
        color: Color(
          0xFF263238,
        ),
      ),
    );
  }
}
