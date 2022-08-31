import 'package:flutter/material.dart';
import 'package:type_issues/presentation/presentation.dart';
import 'package:type_issues/utils/types/widget_error_types.dart';

class WidgetExamplePage extends StatefulWidget {
  const WidgetExamplePage({super.key});

  @override
  State<WidgetExamplePage> createState() => _WidgetExamplePageState();
}

class _WidgetExamplePageState extends State<WidgetExamplePage> {
  bool _makeItCrash = false;
  bool _makeItWork = false;

  final List<ExampleListItem> _items = const [
    ExampleListItem(
      id: "id1",
      title: "Title1",
    ),
    ExampleListItem(
      id: "id2",
      title: "Title2",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Widget error")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (_makeItCrash)
              TypeErrorWidget<ExampleListItem>(
                items: _items,
                idMapper: (item) {
                  return item.id;
                },
              ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _makeItWork = false;
                  _makeItCrash = true;
                });
              },
              child: const Text("Make it crash"),
            ),
            if (_makeItWork && !_makeItCrash)
              TypeWorkaroundWidget<ExampleListItem>(
                items: _items,
                idMapper: (item) {
                  return item.id;
                },
              ),
            if (!_makeItCrash)
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _makeItWork = true;
                    _makeItCrash = false;
                  });
                },
                child: const Text("Make it works"),
              ),
          ],
        ),
      ),
    );
  }
}
