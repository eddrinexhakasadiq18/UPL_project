import "package:flutter/material.dart";

class Latest extends StatefulWidget {
  const Latest({Key? key}) : super(key: key);

  @override
  State<Latest> createState() => _LatestState();
}

class _LatestState extends State<Latest> {
  @override
  Widget build(BuildContext context) {
    final Color bgColor = Color(0xffF3F3F3);
    final Color primaryColor = Color(0xffE70F0B);

    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
             color: Colors.black,
            icon: Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            color: Colors.black,
            icon: Icon(Icons.person),
            onPressed: () {},
          )
        ],
        centerTitle: true,
        
        title: Text(
          "Feeds",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),


      body: ListView(
        children: <Widget>[
         
        ],
      ),
    );
  }
}


