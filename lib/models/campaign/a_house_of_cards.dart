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

final aHouseOfCards = Campaign.fromJson({
  'missionNo': 9,
  'name': 'A House of Cards',
  'targets': [
    {'name': 'Hendrik Schmutz'},
    {'name': 'Mohammad Bin Faisal Al-Khalifa'},
    {'name': 'Tariq Abdul Lateef'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
  ],
  'specialComplications': [
    {'description': 'Never step onto the 7th or 8th floor.', 'chance': 0.40},
  ],
});
