import 'package:flutter/material.dart';

class LineWidget extends StatelessWidget {
  const LineWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        SizedBox(
          width: MediaQuery.of(context).size.width / 4,
        ),
        Container(
          width: 1.0,
          color: Colors.white.withOpacity(0.5),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 4,
        ),
        Container(
          width: 1.0,
          color: Colors.white.withOpacity(0.5),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width / 4,
        ),
        Container(
          width: 1.0,
          color: Colors.white.withOpacity(0.5),
        ),
      ],
    );
  }
}
