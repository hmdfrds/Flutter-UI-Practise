import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
        decoration: InputDecoration(
      hintText: "Search job or companies",
      fillColor: Colors.white,
      filled: true,
      prefixIcon: const Icon(CupertinoIcons.search),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.circular(10.0),
      ),
    ));
  }
}
