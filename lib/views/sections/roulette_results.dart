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

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/providers.dart';

/// The [Section] displaying the roulette result.
/// 
/// Particularly, displays the state of [currentMissionProvider].
// TODO: Complete layout, with overrides(Death on The Mississippi, Amendment XXV custom formatting)
class RouletteResults extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var results = watch(currentMissionProvider.state);
    if (results == null) return Text('No current mission');
    return Column(
      children: [
        Text('${results.missionNo} ${results.name}'),
        Text('${results.entryPoint}'),
        ...results.killConditions.map((condition) => Text('${condition['target']}: ${condition['method']}')),
        Text('${results.exitPoint}'),
        ...?results.intermediatePoints?.map((location) => Text('${location['description']}: ${location['path']}')),
        ...results.complications.map((complication) => Text(complication)),
      ],
    );
  }
}
