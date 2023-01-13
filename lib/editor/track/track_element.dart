import 'dart:math';

import 'package:flutter/material.dart';

final random = Random();

class TrackElement extends StatefulWidget {
  const TrackElement({super.key});

  @override
  State<TrackElement> createState() => _TrackElementState();
}

class _TrackElementState extends State<TrackElement> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      margin: const EdgeInsets.fromLTRB(15, 15, 15, 0),
      decoration: BoxDecoration(
        color: Colors.amber[random.nextInt(8) * 100 + 100],
        borderRadius: const BorderRadius.all(Radius.circular(20))
      ),
      child: Center(child: Text("item!!", style: Theme.of(context).textTheme.bodyText1,))
    );
  }
}