import 'package:flutter/material.dart';

class TileWidget extends StatefulWidget {
  const TileWidget({Key? key}) : super(key: key);

  @override
  State<TileWidget> createState() => _TileWidgetState();
}

class _TileWidgetState extends State<TileWidget> {
  bool _tapped = false;

  @override
  Widget build(BuildContext context) {
    return _tapped ? const SizedBox() : GestureDetector(
      onTap: () => setState(() {
        _tapped = true;
      }),
      child: Container(
        width: MediaQuery.of(context).size.width / 4,
        height: MediaQuery.of(context).size.height / 4.2,
        color: Colors.black,
      ),
    );
  }
}
