import 'package:demo/commanWidgets/carousel/carousel.dart';
import 'package:demo/commanWidgets/footer/desktop_footer.dart';
import 'package:demo/commanWidgets/footer/footer.dart';
import 'package:demo/commanWidgets/footer/mobile_footer.dart';
import 'package:demo/commanWidgets/servicesWidget/services_widget.dart';
import 'package:demo/commanWidgets/topbar/desktop_top_bar.dart';
import 'package:demo/commanWidgets/topbar/mobile_top_bar.dart';
import 'package:demo/commanWidgets/topbar/mobiledrawer.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final String apptitle;

  Home({Key key, @required this.apptitle}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth > 800) {
            return Scaffold(

              body: Column(
                children: [
                  Container(child: DesktopTopBar(),),
                  Container(child: DesktopFooter(),),
                ],
              ),
            );
            
          } else {
            return Scaffold(
              appBar: AppBar(
                title: Text("Demo Shop"),
              ),
              drawer: MobileDrawer(),
              body: Column(
                children: [
                  // Container(child: MobileTopBar(),),
                  Container(child: MobileFooter(),),
                ],
              ),
            );
            // return Stack(
            //   fit: StackFit.expand, 
            //   children:<Widget> [
            //     Container(
            //       child: MobileTopBar(),
            //     ),
                
            //     Container(
                  
            //       child: MobileFooter(),),
                
                
            //   ],
            // );
          }
        },
      ),
    );
  }
}
