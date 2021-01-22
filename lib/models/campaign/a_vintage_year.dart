import '../_internal/mission.dart';

final aVintageYear = Mission.fromJson({
  'missionNo': 1,
  'name': 'A Vintage Year',
  'targets': [
    {'name': 'Don Fernando Delgado'},
    {'name': 'Manuel Delgado'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Falling object'},
    {'name': 'Water/Wine'},
    {'name': 'Kitchen knife'},
    {'name': 'Hammer'},
    {'name': 'Fire extinguisher'},
    {'name': 'Snub Nosed(Revolver)'},
  ],
  'entryPoints': [
    {'description': 'Left from the beginning'},
    {'description': 'Right from the beginning'},
    {'description': 'Through the party to the Wine cellar'},
    {'description': 'Through the party to the Hacienda'},
  ],
  'exitPoints': [
    {'description': 'Cliffside'},
    {'description': 'Elevator'},
  ],
});
