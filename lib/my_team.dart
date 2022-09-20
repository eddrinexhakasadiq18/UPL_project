import 'package:flutter/material.dart';

class MyTeam extends StatefulWidget {
  const MyTeam({Key? key}) : super(key: key);

  @override
  State<MyTeam> createState() => _MyTeamState();
}

class _MyTeamState extends State<MyTeam> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        title: const Text("MY TEAM"),
      ),
      body: ListView(
        children: const [
          Text("This is the TEAM page"),
        ],
      ),
    );
  }
}
