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

final amendmentXxv = Mission.fromJson({
  'missionNo': 11,
  'name': 'Amendment XXV',
  'targets': [
    {'name': 'Daniel Morris'},
    {'name': 'Mark Parchezzi III'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Kitchen knife'},
    {'name': 'Nailer'},
    {'name': 'Custom 1911'},
  ],
  'specialComplications': [
    {'description': 'The fire alarm must not be triggered', 'chance': 0.30},
    {'description': 'Daniel\'s dog must survive', 'chance': 0.35},
  ],
  'entryPoints': [
    {'description': 'Roof'},
    {'description': 'Hallway'},
  ],
  'exitPoints': [
    {'description': 'Roof'},
    {'description': 'Hallway'},
  ],
  'intermediatePoints' : [
    {'description': 'West wing', 'path': ['Roof', 'Hallway']},
    {'description': 'Main building', 'path': ['Roof', 'Courtyard']},
  ]
});
