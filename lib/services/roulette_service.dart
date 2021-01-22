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

import '../models/_internal/complication.dart';
import '../models/_internal/mission.dart';
import '../models/_internal/randomizer.dart';

import '../models/campaign/index.dart';

class RouletteService with Randomizer {
  final List<Mission> _campaign = [
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
  Mission get randomMission => pickRandomFromList(_campaign);

  /// Provides a mission as a result of the roulette
  Mission getMission(String mission) {
    // Look for appropriate mission in the campaign list
    for (Mission i in _campaign) {
      if (i.name == mission) {
        return i;
      }
    }

    // If we didn't find any, return a random mission
    return this.randomMission;
  }

  /// A list of complications to apply on this mission.
  ///
  /// [complications] is the number of complications to apply; if null, evaluates to any
  /// random number between `1` and `4`.
  List<Complication> createComplications(Mission mission, int complications) {
    complications ??= Randomizer.randomInt(4);

    List<Complication> _missionComplications;

    // Obtain a copy of generic complications
    List<Complication> _genericComplications = GenericComplication.genericComplications;

    mission.specialComplications.forEach((element) {
      if (Randomizer.randomDouble <= element.chance) _missionComplications.add(element);
    });

    Complication _randomGenericComplication;

    while (_missionComplications.length <= complications) {
      _randomGenericComplication = pickRandomFromList(_genericComplications);
      _missionComplications.add(_randomGenericComplication);
      _genericComplications.remove(_randomGenericComplication);
    }

    return _missionComplications;
  }
}
