// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:type_issues/utils/utils.dart';

class TypeErrorWidget<T> extends StatefulWidget {
  final Iterable<T> items;
  final IdMapper<T> idMapper;

  const TypeErrorWidget({
    Key? key,
    required this.items,
    required this.idMapper,
  }) : super(key: key);

  @override
  State<TypeErrorWidget> createState() => _TypeErrorWidgetState();
}

class _TypeErrorWidgetState extends State<TypeErrorWidget> {
  late List<String> _itemsIds;

  @override
  void initState() {
    _itemsIds = widget.items.map((e) {
      return widget.idMapper(e);
    }).toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text("I'll crash"),
        Text(_itemsIds.toString()),
      ],
    );
  }
}
