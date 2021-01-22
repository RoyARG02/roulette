import '../_internal/mission.dart';
import '../_internal/randomizer.dart';

final youBetterWatchOut = Mission.fromJson({
  'missionNo': 6,
  'name': 'You Better Watch Out...',
  'targets': [
    {'name': 'Lorne de Havilland'},
    {'name': 'Chad Bingham Jr.'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Jacuzzi/Water'},
    {'name': 'Kitchen knife'},
    if (Randomizer.randomDouble <= 0.29)
      {'name': 'Old age'},
  ],
  'specialComplications': [
    {'description': 'Kill "?"', 'chance': 0.44},
    {'description': 'Lorne\'s dog must survive', 'chance': 0.44},
  ],
  'entryPoints': [
    {'description': 'Guest elevator'},
    {'description': 'Staff elevator'},
  ],
  'exitPoints': [
    {'description': 'Helicopter'},
    {'description': 'Boat'},
  ],
  'intermediatePoints': [
    {'description': 'Second floor', 'path': ['Elevator', 'Staircase']},
  ]
});
