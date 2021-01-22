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

final aDanceWithTheDevil = Mission.fromJson({
  'missionNo': 10,
  'name': 'A Dance with The Devil',
  'targets': [
    {'name': 'Anthony Martinez'},
    {'name': 'Vanna Ketlyn'},
    {'name': 'Eve'},
    {'name': 'Maynard John'}
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Accident kill'},
    {'name': 'Meat Cleaver'},
    {'name': 'Stilleto'},
    {'name': 'Cane Sword'},
    {'name': 'Dragunov SVD'},
  ],
  'specialComplications': [
    {'description': 'Steal the video tape', 'chance': 0.35},
  ],
  'entryPoints' : [
    {'description': 'Heaven Party'},
    {'description': 'Hell Party'},
  ],
});
