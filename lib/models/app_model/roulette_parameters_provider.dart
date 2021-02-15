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

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'roulette_parameters.dart';

/// Notifies the current parameters selected in the roulette.
///
/// [state] of the notifier is initialized as per default initialization of
/// [RouletteParameters].
///
/// [setMissionParameter] updates the mission selected and notifies the widgets
/// depending on it to rebuild.
///
/// Likewise, [setComplicationParameter] updates the complication and notifies
/// the widgets depending upon it to rebuild.
class RouletteParameterProvider extends StateNotifier<RouletteParameters>{
  RouletteParameterProvider() : super(RouletteParameters());

  /// Updates the mission parameter of the roulette.
  ///
  /// The [complication] is copied from the old [state] to the new [state].
  void setMissionParameter(String mission) {
    state = RouletteParameters(
      mission: mission,
      complications: state.complications,
    );
  }

  /// Updates the [complication] parameter of the roulette.
  ///
  /// The [mission] is copied from the old [state] to the new [state].
  void setComplicationParameter(int complications) {
    state = RouletteParameters(
      mission: state.mission,
      complications: complications,
    );
  }
}
