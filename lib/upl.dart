import 'package:flutter/material.dart';

class Upl extends StatefulWidget {
  const Upl({Key? key}) : super(key: key);

  @override
  State<Upl> createState() => _UplState();
}

class _UplState extends State<Upl> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text("UPL"),
      ),
      body: ListView(
        children: const [
          Text("This is the UP page"),
        ],
      ),
    );
  }
}
