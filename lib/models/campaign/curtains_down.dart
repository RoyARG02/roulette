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
import '../_internal/randomizer.dart';

final curtainsDown = Campaign.fromJson({
  'missionNo': 2,
  'name': 'Curtains Down',
  'targets': [
    {'name': 'Alvaro D\'Alvade'},
    {'name': 'Richard Delahunt'},
    if(Randomizer.randomDouble <= 0.2)
    {'name': 'Albert Fournier'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Falling object'},
    {'name': 'Hammer'},
    {'name': 'Screwdriver'},
    {'name': 'Real WW1 pistol'},
  ],
  'specialComplications': [
    {'description': 'Kill Delahunt first.', 'chance': 0.45},
    {'description': 'Retrieve the Prop WW1 pistol.', 'chance': 0.45},
  ],
  'entryPoints': [
    {'description': 'Left and down the stairs'},
    {'description': 'Through the opera hall'},
    {'description': 'Right of the hall and down the stairs'},
  ],
});
