import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:widgets/variables/widget_variable.dart';
import 'package:widgets/widgets/text/text.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool shadowColor = false;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.5);
    final Color evenItemColor = colorScheme.primary;

    return Scaffold(
      appBar: AppBar(
        elevation: 4,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
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
          text: 'Home Page',
          size: 22,
          color: Colors.white,
        ),
        actions: [
          Center(
            child: AppText(
              text: 'Widgets  >>',
              size: 12,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Container(
              margin: EdgeInsets.only(right: 20),
              width: 50,
              height: 50,
              child: SvgPicture.asset('assets/images/avatar.svg'))
        ],
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return SizedBox(
            height: 20,
          );
        },
        shrinkWrap: true,
        itemCount: widgets.length,
        padding: const EdgeInsets.all(20.0),
        itemBuilder: (BuildContext context, int index) {
          return ElevatedButton(
              style: ElevatedButton.styleFrom(
                  // shadowColor: Colors.transparent,
                  backgroundColor: index % 2 != 0 ? Colors.lightBlue : Color.fromARGB(255, 207, 255, 243)),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            widgets.values.elementAt(index)));
              },
              child: AppText(
                color: index % 2 != 0 ? Colors.white : Colors.blue.shade900,
                size: 20,
                text: widgets.keys.elementAt(index),
              ));
        },
      ),
    );
  }
}
