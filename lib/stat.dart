import 'dart:io';

import "package:flutter/material.dart";

class Stat extends StatefulWidget {
  const Stat({Key? key}) : super(key: key);

  @override
  State<Stat> createState() => _StatState();
}

class _StatState extends State<Stat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Text(" STATISTICS"),
      ),
      body: ListView(
        children: const [
          Text("THIS IS THE STAT PAGE"),
        ],
      ),
    );
  }
}
