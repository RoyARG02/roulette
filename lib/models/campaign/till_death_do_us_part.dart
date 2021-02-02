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

final tillDeathDoUsPart = Campaign.fromJson({
  'missionNo': 8,
  'name': 'Till Death Do Us Part',
  'targets': [
    {'name': 'Buddy Muldoon'},
    {'name': 'John LeBlanc'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Swamp'},
    {'name': 'Shovel'},
    {'name': 'Chandelier'},
    {'name': 'Elephant Rifle'},
  ],
  'specialComplications': [
    {'description': 'Never go to the second floor', 'chance': 0.55},
  ],
  'entryPoints': [
    {'description': 'Left door'},
    {'description': 'Front door'},
    {'description': 'Right door'},
  ],
  'exitPoints': [
    {'description': 'Your boat'},
    {'description': 'The priest\'s boat'},
  ],
});
