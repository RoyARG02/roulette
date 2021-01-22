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

final aVintageYear = Mission.fromJson({
  'missionNo': 1,
  'name': 'A Vintage Year',
  'targets': [
    {'name': 'Don Fernando Delgado'},
    {'name': 'Manuel Delgado'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Falling object'},
    {'name': 'Water/Wine'},
    {'name': 'Kitchen knife'},
    {'name': 'Hammer'},
    {'name': 'Fire extinguisher'},
    {'name': 'Snub Nosed(Revolver)'},
  ],
  'entryPoints': [
    {'description': 'Left from the beginning'},
    {'description': 'Right from the beginning'},
    {'description': 'Through the party to the Wine cellar'},
    {'description': 'Through the party to the Hacienda'},
  ],
  'exitPoints': [
    {'description': 'Cliffside'},
    {'description': 'Elevator'},
  ],
});
