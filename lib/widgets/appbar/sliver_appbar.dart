// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:widgets/widgets/text/text.dart';

class AppBarLarge extends StatelessWidget {
  const AppBarLarge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            title: Image.asset(
          "assets/images/1.jpg",
        ),
            backgroundColor: Colors.white,
            flexibleSpace: FlexibleSpaceBar(
              title: AppText(
                text: 'Large App Bar',
                size: 20,
              ),
            ),
            foregroundColor: Colors.white,
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.more_vert))
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.orange),
                  margin: EdgeInsets.all(15),
                  height: 200,
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
