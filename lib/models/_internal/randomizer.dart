import 'dart:math' show Random;

/// Randomizes the available options in a mission.
abstract class Randomizer {
  static double get randomDouble => Random().nextDouble();

  static int randomInt(int max) => Random().nextInt(max) + 1;

  /// Get a random element from a given list.
  T pickRandomFromList<T>(List<T> list) => list[Random().nextInt(list.length)];
}
