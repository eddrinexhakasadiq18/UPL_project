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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text(" STATISTICS"),
      ),
      body: ListView(
        children: [
          // Single Statistic of a player
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromARGB(188, 112, 212, 30),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Player Image
                    const CircleAvatar(
                      backgroundColor: Colors.red,
                      foregroundImage: AssetImage("assets/images/kcca.png"),
                    ),
                    SizedBox(width: 20),

                    // Player Name
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("RONALD"), Text("Portugual")],
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Play Icon
                    const Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                    SizedBox(width: 12),

                    // Hear Icon
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Icon(Icons.heart_broken), Text("90")],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromARGB(188, 112, 212, 30),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Player Image
                    const CircleAvatar(
                      backgroundColor: Colors.red,
                      foregroundImage: AssetImage("assets/images/kcca.png"),
                    ),
                    SizedBox(width: 20),

                    // Player Name
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("RONALD"), Text("Portugual")],
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Play Icon
                    const Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                    SizedBox(width: 12),

                    // Hear Icon
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Icon(Icons.heart_broken), Text("90")],
                    ),
                  ],
                ),
              ],
            ),
          ),
        
          Container(
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color.fromARGB(188, 112, 212, 30),
            ),
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    // Player Image
                    const CircleAvatar(
                      backgroundColor: Colors.red,
                      foregroundImage: AssetImage("assets/images/kcca.png"),
                    ),
                    SizedBox(width: 20),

                    // Player Name
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Text("RONALD"), Text("Portugual")],
                    ),
                  ],
                ),
                Row(
                  children: [
                    // Play Icon
                    const Icon(
                      Icons.play_arrow,
                      size: 50,
                    ),
                    SizedBox(width: 12),

                    // Hear Icon
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [Icon(Icons.heart_broken), Text("90")],
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
