import 'package:flutter/material.dart';

class DesktopTopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    // margin: EdgeInsets.all(20),
                    width: 1200.0,
                    height: 50.0,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Row(
                      children: [
                        Center(
                          child: Text(
                            "DEMO SHOP",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 3,
                            ),
                          ),
                        ),
                        // Spacer(),
                        Padding(
                          padding: EdgeInsets.only(left: 10,right: 10),
                          child: new ButtonBar(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              FlatButton(
                                child: Text('Home'),
                                // color: Colors.lightGreen,
                                onPressed: () {/** */},
                              ),
                              FlatButton(
                                child: Text('Contact Us'),
                                // color: Colors.lightGreen,
                                onPressed: () {/** */},
                              ),
                              FlatButton(
                                child: Text('About Us'),
                                // color: Colors.lightGreen,
                                onPressed: () {/** */},
                              ),
                              FlatButton(
                                child: Text('Shop'),
                                // color: Colors.lightGreen,
                                onPressed: () {/** */},
                              ),
                              FlatButton(
                                child: Text('Products'),
                                // color: Colors.lightGreen,
                                onPressed: () {/** */},
                              ),
                              FlatButton(
                                child: Text('Login'),
                                // color: Colors.lightGreen,
                                onPressed: () {/** */},
                              ),
                            ],
                          ),
                        ),
                        Spacer(),
                        IconButton(
                            icon: Icon(Icons.camera_alt), onPressed: () => {}),
                        IconButton(
                            icon: Icon(Icons.list_outlined),
                            onPressed: () => {
                                  print("object"),
                                }),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
