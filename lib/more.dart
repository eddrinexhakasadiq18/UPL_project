import 'dart:io';

import "package:flutter/material.dart";

class More extends StatefulWidget {
  const More({Key? key}) : super(key: key);

  @override
  State<More> createState() => _MoreState();
}

class _MoreState extends State<More> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent
      appBar: AppBar(
        title: const Text(" MORE"),
      ),
      body: ListView(
        children: const [
          Text("THIS IS THE MORE PAGE"),
        ],
      ),
    );
  }
}
