import 'package:flutter/material.dart';
import 'package:widgets/variables/widget_variable.dart';
import 'package:widgets/widgets/appbar/image_appbar.dart';
import 'package:widgets/widgets/appbar/sliver_appbar.dart';
import 'package:widgets/widgets/appbar/normal_appbar.dart';
import 'package:widgets/widgets/text/text.dart';

class MainAppBarPage extends StatefulWidget {
  const MainAppBarPage({super.key});

  @override
  State<MainAppBarPage> createState() => _MainAppBarPageState();
}

class _MainAppBarPageState extends State<MainAppBarPage> {
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;
    final Color oddItemColor = colorScheme.primary.withOpacity(0.6);
    final Color evenItemColor = colorScheme.primary.withOpacity(0.2);

    Map widgets = {
      'Normal AppBar' : NormalAppBar(),
      'Sliver AppBar(Large)': AppBarLarge(),
      'Image AppBar': ImageAppBar(),

    };

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.white,
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        backgroundColor: Colors.lightBlue,
        title: AppText(
          text: 'App Bar Demo',
          size: 20,
          color: Colors.white,
        ),
        scrolledUnderElevation: scrolledUnderElevation,
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
                  backgroundColor: index % 2 != 0
                      ? Colors.lightBlue
                      : Color.fromARGB(255, 207, 255, 243)),
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
