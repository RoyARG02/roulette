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

/// The [DropdownButton] listing the available [Campaign]s to choose, displayed 
/// on [RouletteBody].
/// 
/// Displays the [mission] held by [rouletteParameterProvider]'s state, and 
/// updates it accordingly on change.
class MissionDropdown extends ConsumerWidget {
  static const List<String> _dropdownOptions = [
    'Random mission',
    'A Vintage Year',
    'Curtains Down',
    'Flatline',
    'A New Life',
    'The Murder of Crows',
    'You Better Watch Out...',
    'Death on the Mississippi',
    'Till Death Do Us Part',
    'A House of Cards',
    'A Dance with The Devil',
    'Amendment XXV'
  ];
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return DropdownButton(
      value: watch(rouletteParameterProvider.state).mission,
      items: _dropdownOptions
          .map((String mission) => DropdownMenuItem<String>(
                child: Text(mission),
                value: mission,
              ))
          .toList(),
      onChanged: (String? selected) => context
          .read(rouletteParameterProvider)
          .setMissionParameter(selected!),
    );
  }
}
