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

import '../_internal/campaign.dart';

final deathOnTheMississippi = Campaign.fromJson({
  'missionNo': 7,
  'name': 'Death on the Mississippi',
  'targets': [
    {'name': 'Skip Muldoon'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Kitchen knife'},
    {'name': 'Fire extinguisher'},
    {'name': 'Shovel'},
    {'name': 'Accident kill'},
    {'name': 'Desert Eagle'},
  ],
  'specialComplications': [
    {'description': 'Retrieve the FN-2000.', 'chance': 0.35},
  ],
  'entryPoints': [
    {'description': 'Engine room'},
    {'description': 'Cabins'},
  ],
});
