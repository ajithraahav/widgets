import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:widgets/widgets/text/text.dart';

class NormalAppBar extends StatelessWidget {
  const NormalAppBar({super.key});

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
        title: AppText(
          text: 'Home',
          size: 22,
          color: Colors.white,
        ),
        actions: [
          IconButton(
            color: Colors.white,
            onPressed: () {},
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 20,
            );
          },
          shrinkWrap: true,
          itemCount: 10,
          padding: const EdgeInsets.all(20.0),
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: Colors.lightGreen.withOpacity(0.3)),
              margin: EdgeInsets.all(10),
              width: 300,
              height: 200,
              child: Center(
                child: AppText(
                  text: 'Normal AppBar',
                ),
              ),
            ));
          }),
    );
  }
}
