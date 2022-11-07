import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widgets/widgets/text/text.dart';

class ImageAppBar extends StatelessWidget {
  const ImageAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 15.0,
        shadowColor: Colors.black,
        backgroundColor: Colors.lightBlue.withOpacity(0.7),
        toolbarHeight: 70,
        leading: Container(
          margin: EdgeInsets.only(left: 10),
          child: IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(Icons.menu),
          ),
        ),
        leadingWidth: 40,
        title: Image.asset(
          "assets/images/1.jpg",
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: Center(
                child: AppText(
                  text: 'Normal AppBar',
                ),
              ),
    );
  }
}
