import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:upl_app/latest.dart';
import 'package:upl_app/my_team.dart';
import 'package:upl_app/stat.dart';
import 'package:upl_app/upl.dart';

import 'package:upl_app/more.dart';
//import 'package:upl_app/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'UPL',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: Colors.blue,
        ),

        home: AnimatedSplashScreen(
            splash: 'images/upl_logo.png',
            splashIconSize: double.infinity,
            backgroundColor: Color.fromARGB(255, 247, 208, 125),
            splashTransition: SplashTransition.fadeTransition,
            //splashTransition.slideTransition,
            //splashTransition.scaleTransition,
            //splashTransition.rotationTransition,
            //splashTransition.sizeTransition,
            //splashTransition.fadeTransition,
            //splashTransition.decoratedBoxTransition
            nextScreen: MyHomePage())
            
          
            );
  }
}


class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  final screen = [
    const Latest(),
    const Upl(),
    const MyTeam(),
    const Stat(),
    const More(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.indigo, Colors.orange])),
        child: BottomAppBar(
          elevation: 0,
          color: Colors.transparent,
          child: SizedBox(
            height: 56,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.only(left: 25.0, right: 25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconBottomBar(
                      text: "Latest",
                      icon: Icons.home,
                      selected: _selectedIndex == 0,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 0;
                        });
                      }),
                  IconBottomBar(
                      text: "UPL",
                      icon: Icons.sports_soccer_sharp,
                      selected: _selectedIndex == 1,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 1;
                        });
                      }),
                  IconBottomBar(
                      text: "My Team",
                      icon: Icons.local_grocery_store,
                      selected: _selectedIndex == 2,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 2;
                        });
                      }),
                  IconBottomBar(
                      text: "Stats",
                      icon: Icons.add,
                      selected: _selectedIndex == 3,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 3;
                        });
                      }),
                  IconBottomBar(
                      text: "More",
                      icon: Icons.more_vert,
                      selected: _selectedIndex == 4,
                      onPressed: () {
                        setState(() {
                          _selectedIndex = 4;
                        });
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BottomNavigationBar1 extends StatefulWidget {
  const BottomNavigationBar1({Key? key}) : super(key: key);

  @override
  State<BottomNavigationBar1> createState() => _BottomNavigationBar1State();
}

class _BottomNavigationBar1State extends State<BottomNavigationBar1> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
        Color.fromARGB(255, 6, 36, 204),
        Color.fromARGB(255, 197, 122, 9)
      ])),
      child: BottomAppBar(
        elevation: 0,
        color: Colors.transparent,
        child: SizedBox(
          height: 56,
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.only(left: 25.0, right: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconBottomBar(
                    text: "Latest",
                    icon: Icons.home,
                    selected: _selectedIndex == 0,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 0;
                      });
                    }),
                IconBottomBar(
                    text: "UPL",
                    icon: Icons.sports_soccer_sharp,
                    selected: _selectedIndex == 1,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 1;
                      });
                    }),
                IconBottomBar(
                    text: "My Team",
                    icon: Icons.local_grocery_store,
                    selected: _selectedIndex == 2,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 2;
                      });
                    }),
                IconBottomBar(
                    text: "Stats",
                    icon: Icons.add,
                    selected: _selectedIndex == 3,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 3;
                      });
                    }),
                IconBottomBar(
                    text: "More",
                    icon: Icons.more_vert,
                    selected: _selectedIndex == 4,
                    onPressed: () {
                      setState(() {
                        _selectedIndex = 4;
                      });
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class IconBottomBar extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool selected;
  final Function() onPressed;

  const IconBottomBar(
      {required this.text,
      required this.icon,
      required this.selected,
      required this.onPressed,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
            onPressed: onPressed,
            icon: Icon(
              icon,
              size: 27,
              color: selected ? Colors.white : Colors.grey,
            )),
        Text(
          text,
          style: TextStyle(
              fontSize: 15,
              height: 1,
              color: selected ? Colors.white : Colors.white),
        )
      ],
    );
  }
}
