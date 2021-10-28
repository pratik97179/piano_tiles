import 'package:flutter/material.dart';
import 'package:piano_clone/src/utils/random_rumber.dart';

import 'package:piano_clone/src/widgets/line_widget.dart';
import 'package:piano_clone/src/widgets/tile_widget.dart';

class GameScreen extends StatefulWidget {
  const GameScreen({Key? key}) : super(key: key);

  @override
  State<GameScreen> createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _ac;

  @override
  void initState() {
    super.initState();
    _ac = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _ac.forward();
  }

  @override
  Widget build(BuildContext context) {
    double _top = MediaQuery.of(context).size.height;
    return Stack(
      children: <Widget>[
        const LineWidget(),
        AnimatedBuilder(
          animation: _ac,
          builder: (context, _) {
            return Transform(
              transform: Matrix4.identity()
                ..translate(0.0, _top * _ac.value, 0.0),
              child: Positioned(
                top: _top,
                left:
                    RandomNumber.get() * MediaQuery.of(context).size.width / 4,
                child: const TileWidget(),
              ),
            );
          },
        ),
      ],
    );
  }
}
