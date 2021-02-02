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

import '../_internal/campaign.dart';
import '../_internal/randomizer.dart';

final aNewLife = Campaign.fromJson({
  'missionNo': 4,
  'name': 'A New Life',
  'targets': [
    {'name': 'Vinnie Sinistra'},
  ],
  'methods': [
    {'name': 'Kitchen knife'},
    {'name': 'Fiber Wire'},
    {'name': 'Nailer'},
    {'name': 'RU-AP Mine'},
    {'name': 'Baseball bat'},
    {'name': 'Gun'},
    {'name': 'Glass ceiling'},
    {'name': 'Car'},
    {'name': 'Gravity'},
    {'name': 'Swimming pool'},
    {'name': 'Hedge cutter'},
    {'name': 'Bull .480'},
    if (Randomizer.randomDouble <= 0.29)
      {'name': 'Lethal dose of boredom that is already killing him from the inside'},
  ],
  'specialComplications': [
    {'description': 'Vinnie\'s wife must survive', 'chance': 0.39},
    {'description': 'Vinnie\'s dog must survive', 'chance': 0.44},
  ],
  'entryPoints': [
    {'description': 'Garage'},
    {'description': 'Basement'},
    {'description': 'Front door'},
    {'description': 'Backyard'},
  ],
  'exitPoints': [
    {'description': 'Garage'},
    {'description': 'Front door'},
  ],
});
