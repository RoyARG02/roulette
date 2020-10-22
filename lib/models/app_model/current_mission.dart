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
