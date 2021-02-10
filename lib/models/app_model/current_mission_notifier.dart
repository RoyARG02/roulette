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

import 'package:flutter_riverpod/all.dart';
import 'package:roulette/models/app_model/current_mission.dart';

/// Notifies the current mission selected in the roulette.
///
/// [state] of the notifier is initialized as null.
///
/// [updateCurrentMission] updates the roulette result as selected and notifies
/// the widgets depending on it to rebuild.
class CurrentMissionNotifier extends StateNotifier<CurrentMission?> {
  CurrentMissionNotifier(CurrentMission? currentMission) : super(currentMission);

  /// Updates the state of this [CurrentMissionNotifier].
  ///
  /// Should be invoked after the roulette has fetched a new result for the
  /// widgets depending on it to rebuild and display.
  void updateCurrentMission(CurrentMission newMission) {
    state = newMission;
  }
}