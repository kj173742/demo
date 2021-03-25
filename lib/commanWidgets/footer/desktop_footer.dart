import 'package:flutter/material.dart';

class DesktopFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                    color: Colors.green
                    ),
                child: Text("This is desktop footer"),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
