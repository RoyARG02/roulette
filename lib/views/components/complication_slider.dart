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

/// The [Slider] displayed on the [RouletteBody].
/// 
/// Displays the [complications] held by [rouletteParameterProvider]'s state, and 
/// updates it accordingly on change.
class ComplicationSlider extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    // TODO: A custom thumb with the value written on it.
    return Slider(
      min: -1,
      max: 4,
      divisions: 5,
      value: watch(rouletteParameterProvider.state).complications.toDouble(),
      onChanged: (double selected) => context
          .read(rouletteParameterProvider)
          .setComplicationParameter(selected.toInt()),
    );
  }
}
