import 'package:flutter/material.dart';

AppBar buildAppBar() {
  return AppBar(
    backgroundColor: const Color(0xFF4A4040),
    leading: const Icon(Icons.menu, color: Colors.white),
    title: const Text('DevTools', style: TextStyle(color: Colors.white)),
    centerTitle: true,
    elevation: 0,
  );
}