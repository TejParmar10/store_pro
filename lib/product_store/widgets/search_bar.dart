import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ionicons/ionicons.dart';
import 'package:store_pro/themes/styles.dart';
import 'package:velocity_x/velocity_x.dart';

class Searchbar extends StatelessWidget {
  const Searchbar(
      {super.key, required this.controller, required this.focusNode});
  final TextEditingController controller;
  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(18),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.shade200,
                  blurRadius: 4,
                  offset: const Offset(0, 2)),
            ]),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Ionicons.search),
            ),
            Expanded(
              child: TextField(
                controller: controller,
                focusNode: focusNode,
                style: Styles.searchText,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                controller.clear();
              },
              icon: Icon(Icons.clear),
            ),
          ],
        ),
      ),
    );
  }
}
