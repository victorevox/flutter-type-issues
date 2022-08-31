import 'package:flutter/material.dart';
import 'package:type_issues/presentation/pages/widget_example_page.dart';
import 'package:type_issues/presentation/presentation.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const WidgetExamplePage(),
                ));
              },
              child: const Text("Widget - example"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const FreezedPage(),
                ));
              },
              child: const Text("Freezed - example"),
            )
          ],
        ),
      ),
    );
  }
}
