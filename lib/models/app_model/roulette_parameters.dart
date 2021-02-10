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

/// The required parameters for the roulette to fetch a new result.
///
/// [mission] is the name of the mission of the campaign selected in the
/// roulette, initialized as `Random mission` to pre-select a random mission on
/// startup.
///
/// [complications] is the number of [Complication] the roulette will apply to
/// the result, initialized as `-1` to pre-select random number of
/// complications.
///
/// See also:
///
///  * [RouletteService], which uses these values.
///  * [SpinRouletteCommand], which hands over these values to [RouletteService].
class RouletteParameters {
  RouletteParameters({
    String? mission,
    int? complications,
  })  : this.mission = mission ?? 'Random mission',
        this.complications = complications ?? -1;

  /// The name of the mission selected in the roulette dropdown.
  final String mission;

  /// The number of complications selected in the roulette.
  final int complications;
}
