import 'package:flutter/material.dart';
import 'package:marcato/theme/theme_color.dart';

const dividerThickness = 1.0;

final verticalDivider = PreferredSize(
  preferredSize: const Size.fromHeight(dividerThickness),
  child: Container(
    color: currentThemeMaterialColor.shade900,
    height: dividerThickness,
  ),
);

final horizontalDivider = PreferredSize(
  preferredSize: const Size.fromWidth(dividerThickness),
  child: Container(
    color: currentThemeMaterialColor.shade900,
    width: dividerThickness,
  ),
);

