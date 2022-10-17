import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';


class Latest extends StatefulWidget {
  const Latest({Key? key}) : super(key: key);

  @override
  State<Latest> createState() => _LatestState();
}

class _LatestState extends State<Latest> {
  get svgPicture => null;

  @override
  Widget build(BuildContext context) {
    final Color bgColor = Color(0xffF3F3F3);
    final Color primaryColor = Color(0xffE70F0B);

    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'images/vipers.jpg',
                fit: BoxFit.cover,
              ),
            ),
            
            leading: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  "assets/back.svg",
                  color: Colors.black,
                  ),
                  ),
            ),

           actions: [
            CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  "assets/share.svg",
                  color: Colors.black,
                  ),
                  ),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                    "assets/search.svg",
                    color: Colors.black,
                    ),
                    ),
                  ),
           ],
           
          )
        ],       
      ),
    );
  }
}


