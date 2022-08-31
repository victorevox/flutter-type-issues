import 'package:flutter/material.dart';
import 'package:type_issues/utils/types/types.dart';

class FreezedPage extends StatefulWidget {
  const FreezedPage({super.key});

  @override
  State<FreezedPage> createState() => _FreezedPageState();
}

class _FreezedPageState extends State<FreezedPage> {
  bool _makeItCrash = false;
  bool _makeItWork = false;

  List<FreezedExampleType> exampleType = List<FreezedExampleType>.of([]);

  @override
  void initState() {
    exampleType.add(
      FreezedExampleType<ExampleListItem>.example(
        callback: (item) {
          return item.id;
        },
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Freezed error")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // if (_makeItCrash)
            // TypeErrorWidget<ExampleListItem>(
            //   items: _items,
            //   idMapper: (item) {
            //     return item.id;
            //   },
            // ),
            ElevatedButton(
              onPressed: () {
                // setState(() {
                //   _makeItWork = false;
                //   _makeItCrash = true;
                // });
                _userType();
              },
              child: const Text("Make it crash"),
            ),
            // if (_makeItWork && !_makeItCrash)
            // TypeWorkaroundWidget<ExampleListItem>(
            //   items: _items,
            //   idMapper: (item) {
            //     return item.id;
            //   },
            // ),
            // if (!_makeItCrash)
            //   ElevatedButton(
            //     onPressed: () {
            //       setState(() {
            //         _makeItWork = true;
            //         _makeItCrash = false;
            //       });
            //     },
            //     child: const Text("Make it works"),
            //   ),
          ],
        ),
      ),
    );
  }

  _userType() {
    const item = ExampleListItem(
      id: "exampleId",
      title: "Example Title",
    );
    print(
      exampleType.first.mapOrNull(
        example: (value) {
          return value.callback(item);
        },
      ),
    );
  }
}
