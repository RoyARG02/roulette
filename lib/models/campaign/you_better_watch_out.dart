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

import '../_internal/mission.dart';
import '../_internal/randomizer.dart';

final youBetterWatchOut = Mission.fromJson({
  'missionNo': 6,
  'name': 'You Better Watch Out...',
  'targets': [
    {'name': 'Lorne de Havilland'},
    {'name': 'Chad Bingham Jr.'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Jacuzzi/Water'},
    {'name': 'Kitchen knife'},
    if (Randomizer.randomDouble <= 0.29)
      {'name': 'Old age'},
  ],
  'specialComplications': [
    {'description': 'Kill "?"', 'chance': 0.44},
    {'description': 'Lorne\'s dog must survive', 'chance': 0.44},
  ],
  'entryPoints': [
    {'description': 'Guest elevator'},
    {'description': 'Staff elevator'},
  ],
  'exitPoints': [
    {'description': 'Helicopter'},
    {'description': 'Boat'},
  ],
  'intermediatePoints': [
    {'description': 'Second floor', 'path': ['Elevator', 'Staircase']},
  ]
});
