import 'package:flutter/material.dart';
import 'package:marcato/editor/track/track_bar.dart';
import 'package:marcato/theme/app_bar.dart';
import 'package:marcato/theme/theme_color.dart';
import 'package:marcato/theme/theme_ui.dart';
import 'package:multi_split_view/multi_split_view.dart';

class EditorPage extends StatefulWidget {
  const EditorPage({super.key});

  @override
  State<EditorPage> createState() => _EditorPageState();
}

class _EditorPageState extends State<EditorPage> {

  late AppBar _appBar;
  late Widget _editorBody;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildEditorBody()
    );
  }

  AppBar _buildAppBar() {
    final menuButtonKey = GlobalKey();

    menuButtonOnPressed() {
      final size = (menuButtonKey.currentContext!.findRenderObject() as RenderBox).size;
      showMenu(
          context: context,
          position: RelativeRect.fromLTRB(0, size.height, 0, size.height),
          items: [
            PopupMenuItem<void>(
              child: const Text("this is menu item"),
              onTap: () {debugPrint("menu item clicked!");},
            )
          ]
      );
    }

    _appBar = AppBar(
        elevation: 0,
        leading: ElevatedButton(
          key: menuButtonKey,
          onPressed: menuButtonOnPressed,
          style: appBarButtonStyle,
          child: const Icon(Icons.menu_outlined),
        ),
        actions: [
          ElevatedButton(
              onPressed: () {},
              style: appBarButtonStyle,
              child: const Icon(Icons.play_arrow_rounded)),
          ElevatedButton(
              onPressed: () {},
              style: appBarButtonStyle,
              child: const Icon(Icons.settings)),
        ],
        bottom: verticalDivider
    );

    return _appBar;
  }

  Widget _buildEditorBody() {
    _editorBody = MultiSplitView(
      controller: MultiSplitViewController(areas: [
        Area(minimalWeight: 0.15, weight: 0.25),
        Area(minimalWeight: 0.6, weight: 0.75)
      ]),
      children: <Widget>[
        const TrackBar(),
        Container(
          color: currentThemeData.scaffoldBackgroundColor,
        )
      ],
    );

    return _editorBody;
  }
}
