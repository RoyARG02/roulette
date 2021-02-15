// Roulette
//     Copyright (C) 2020, 2021  Anurag Roy
//
//     This program is free software: you can redistribute it and/or modify
//     it under the terms of the GNU General Public License as published by
//     the Free Software Foundation, either version 3 of the License, or
//     (at your option) any later version.
//
//     This program is distributed in the hope that it will be useful,
//     but WITHOUT ANY WARRANTY; without even the implied warranty of
//     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//     GNU General Public License for more details.
//
//     You should have received a copy of the GNU General Public License
//     along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:flutter/material.dart';

import '../constants.dart';

/// Defines the layout of each section of the [RouletteBody].
///
/// Takes into account the window size to arrange the [members].
/// 
/// If [layoutBreakpointWidthPx] is less than `480px`, arranges [SectionMember]s 
/// vertically; else, arranges them horizontally.
class Section extends StatelessWidget {
  Section({
    this.mainAxisAlignment = MainAxisAlignment.start,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    required this.members,
  });

  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  /// The list of widgets that form this [Section].
  final List<Widget> members;

  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: (context.windowWidth < layoutBreakpointWidthPx)
          ? Column(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: members,
            )
          : Row(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: members,
            ),
    );
  }
}

/// A convenience widget that provides appropriate margin to its [child] 
/// depending on the layout of the [Section] it is a part of.
/// 
/// Typically used in a list by [Section.members]. 
class SectionMember extends StatelessWidget {
  SectionMember({required this.child});
  
  /// The widget to form the [Section].
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return (context.windowWidth < layoutBreakpointWidthPx)
        ? Container(
            margin: const EdgeInsets.only(top: 24),
            child: child,
          )
        : Container(
            margin: const EdgeInsets.only(bottom: 24),
            child: child,
          );
  }
}

extension _BuildContextX on BuildContext {
  double get windowHeight => MediaQuery.of(this).size.height;
  double get windowWidth => MediaQuery.of(this).size.width;
}
