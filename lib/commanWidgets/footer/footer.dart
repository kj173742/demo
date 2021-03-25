import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(
        color: Colors.red,
      ),
      alignment: Alignment.bottomCenter,
      child: Text("This is Footer Widget"),
    );
  }
}
