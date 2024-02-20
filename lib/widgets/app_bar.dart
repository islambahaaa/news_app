import 'package:flutter/material.dart';

AppBar NewsAppBar() {
  return AppBar(
    iconTheme: IconThemeData(color: Colors.black),
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: const Row(mainAxisSize: MainAxisSize.min, children: [
      Text(
        'News',
        style: TextStyle(color: Colors.black),
      ),
      Text(
        'Cloud',
        style: TextStyle(color: Colors.orange),
      ),
    ]),
  );
}
