// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:type_issues/utils/utils.dart';

class TypeWorkaroundWidget<T> extends StatefulWidget {
  final Iterable<T> items;
  final IdMapper<T> idMapper;

  const TypeWorkaroundWidget({
    Key? key,
    required this.items,
    required this.idMapper,
  }) : super(key: key);

  @override
  State<TypeWorkaroundWidget> createState() => _TypeErrorWidgetState<T>(
        idMapper: idMapper,
      );
}

class _TypeErrorWidgetState<T> extends State<TypeWorkaroundWidget> {
  late List<String> _itemsIds;
  final IdMapper<T> idMapper;

  _TypeErrorWidgetState({
    required this.idMapper,
  });

  @override
  void initState() {
    _itemsIds = widget.items.map((e) {
      return idMapper(e);
    }).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("I'll work"),
        Text(_itemsIds.toString()),
      ],
    );
  }
}
