import 'package:flutter/material.dart';
import 'package:marcato/editor/track/track_element.dart';
import 'package:marcato/theme/theme_color.dart';

var trackElements = <TrackElement>[
  const TrackElement(),
  const TrackElement(),
  const TrackElement(),
];

class TrackBar extends StatelessWidget {
  const TrackBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      decoration: BoxDecoration(
        color: currentThemeMaterialColor,
        border: Border(
          right: BorderSide(
            color: currentThemeMaterialColor.shade900,
            width: 1.0
          )
        )
      ),
      child: _TrackListView()
    );
  }
}

class _TrackListView extends StatefulWidget{
  @override
  State<_TrackListView> createState() => _TrackListViewState();
}

class _TrackListViewState extends State<_TrackListView> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: trackElements.length,
        itemBuilder: (BuildContext context, int index) => trackElements[index]
    );
  }
}