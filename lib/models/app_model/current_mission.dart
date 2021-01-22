/// Roulette
///     Copyright (C) 2020, 2021  Anurag Roy
///
///     This program is free software: you can redistribute it and/or modify
///     it under the terms of the GNU General Public License as published by
///     the Free Software Foundation, either version 3 of the License, or
///     (at your option) any later version.
///
///     This program is distributed in the hope that it will be useful,
///     but WITHOUT ANY WARRANTY; without even the implied warranty of
///     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
///     GNU General Public License for more details.
///
///     You should have received a copy of the GNU General Public License
///     along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:flutter/foundation.dart';

import '../_internal/complication.dart';
import '../_internal/mission.dart';
import '../_internal/randomizer.dart';

class CurrentMission extends ChangeNotifier with Randomizer {
  Mission _currentMission;

  List<Complication> _missionComplications;

  set currentMission(Mission newMission) {
    _currentMission = newMission;
    notifyListeners();
  }

  set missionComplications(List<Complication> complications){
    _missionComplications = complications;
  }

  /// The current mission.
  Mission get currentMission => this._currentMission;

  /// A random entry point of a mission.
  String get entryPoint => pickRandomFromList(_currentMission.entryPoints).description;

  /// A random exit point of a mission.
  String get exitPoint => pickRandomFromList(_currentMission.exitPoints).description;

  /// A random method to eliminate the target.
  String get method => pickRandomFromList(_currentMission.methods).name;

  /// The cpmplications applied on this mission.
  List<Complication> get complications => this._missionComplications;
}
