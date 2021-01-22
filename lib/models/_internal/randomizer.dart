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

import 'dart:math' show Random;

/// Randomizes the available options in a mission.
abstract class Randomizer {
  static double get randomDouble => Random().nextDouble();

  static int randomInt(int max) => Random().nextInt(max) + 1;

  /// Get a random element from a given list.
  T pickRandomFromList<T>(List<T> list) => list[Random().nextInt(list.length)];
}
