import 'dart:math' show Random;

import 'package:roulette/models/_internal/mission.dart';

/// Randomizes the available options in a mission.
extension Randomizer on Mission{
  static double get randomDouble => Random().nextDouble();

  /// Get a random element from a given list.
  T _pickRandomFromList<T>(List<T> list) => list[Random().nextInt(list.length)];

  /// A random entry point of a mission.
  String get entryPoint => _pickRandomFromList(this.entryPoints).description;
  /// A random exit point of a mission.
  String get exitPoint => _pickRandomFromList(this.exitPoints).description;
  /// A random method to eliminate the target.
  String get method => _pickRandomFromList(this.methods).name;

}