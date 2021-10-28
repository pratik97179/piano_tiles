import 'package:flutter/material.dart';

class TileWidget extends StatelessWidget {
  const TileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => print("tapped"),
      child: Container(
        width: MediaQuery.of(context).size.width/4,
        height: MediaQuery.of(context).size.height/4.2,
        color: Colors.black,
      ),
    );
  }
}
