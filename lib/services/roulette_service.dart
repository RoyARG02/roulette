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

import '../models/_internal/complication.dart';
import '../models/_internal/campaign.dart';
import '../models/_internal/randomizer.dart';

import '../models/app_model/current_mission.dart';
import '../models/campaign/index.dart';

/// The Roulette service.
///
/// This class provides various functions used for generating random conditions
/// for the "roulette", given a specific mission or a random mission.
///
/// The functions defined here are generally invoked by the controller models,
/// to get a new app model as the result of the roulette.
class RouletteService with Randomizer {
  /// The list of campaigns the roulette will work on.
  final List<Campaign> _campaign = [
    aVintageYear,
    curtainsDown,
    flatline,
    aNewLife,
    theMurderOfCrows,
    youBetterWatchOut,
    deathOnTheMississippi,
    tillDeathDoUsPart,
    aHouseOfCards,
    aDanceWithTheDevil,
    amendmentXxv,
  ];

  /// Provides a random mission from the campaign.
  Campaign get _randomMission => pickRandomFromList(_campaign);

  /// Provides a mission as a result of the roulette
  CurrentMission spinRoulette(String mission, int complications) {
    // Selected mission can be null if mission argument is not in campaign
    Campaign? _selectedMission;

    // Look for appropriate mission in the campaign list
    for (Campaign i in _campaign) {
      if (i.name == mission) {
        _selectedMission = i;
      }
    }

    // If we didn't find any, get a random mission
    _selectedMission ??= this._randomMission;

    // TODO: debug
    print(_selectedMission);

    return this._getConditions(_selectedMission, complications);
  }

  /// A list of complications to apply on this mission.
  ///
  /// [complications] is the number of complications to apply; if it is `-1`,
  /// evaluates to any random number between `0` and `4`.
  List<String> createComplications(Campaign mission, int complications) {
    if(complications == -1) complications = Randomizer.randomInt(4);

    // This will have all the complications that could be applied for this
    // specific roulette.
    List<String> _tempComplications = [];

    // Add special complications of the mission based on the complication
    // chance.
    mission.specialComplications?.forEach((element) {
      if (Randomizer.randomDouble <= element.chance) _tempComplications.add(element.description);
    });

    // Spread the genericComplications in the complication list and shuffle them.
    _tempComplications = [..._tempComplications, ...GenericComplication.genericComplications.map((comp) => comp.description)]..shuffle();

    // return as many complications as required.
    return _tempComplications.take(complications).toList();
  }

  /// Creates kill conditions for each of the targets for a mission.
  ///
  /// Each map of the returned list will contain the name of the [Target] as the
  /// key and a random [Method] as the value.
  List<Map<String, String>> createKillConditions(Campaign mission) {
    return mission.targets.map((target) => {target.name : pickRandomFromList(mission.methods).name}).toList();
  }

  /// Creates restrictions for accessing intermediate points of a mission.
  ///
  /// Each map of the returned list will contain the description of the
  /// [IntermediatePoint] as the key and a random path as the value.
  List<Map<String, String>>? getIntermediatePoints(Campaign mission) {
    return mission.intermediatePoints?.map((location) => {location.description : pickRandomFromList(location.path)}).toList();
  }

  /// Creates the result of the roulette as the app model.
  CurrentMission _getConditions(Campaign mission, int complications) {
    return CurrentMission.fromJson({
      'missionNo': mission.missionNo,
      'name': mission.name,
      if(mission.entryPoints != null) 'entryPoint': pickRandomFromList(mission.entryPoints!).description,
      'killConditions': createKillConditions(mission),
      if(mission.exitPoints != null) 'exitPoint': pickRandomFromList(mission.exitPoints!).description,
      'intermediatePoints': getIntermediatePoints(mission),
      'complications': createComplications(mission, complications),
    });
  }
}
