import '../_internal/mission.dart';

final amendmentXxv = Mission.fromJson({
  'missionNo': 11,
  'name': 'Amendment XXV',
  'targets': [
    {'name': 'Daniel Morris'},
    {'name': 'Mark Parchezzi III'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Kitchen knife'},
    {'name': 'Nailer'},
    {'name': 'Custom 1911'},
  ],
  'specialComplications': [
    {'description': 'The fire alarm must not be triggered', 'chance': 0.30},
    {'description': 'Daniel\'s dog must survive', 'chance': 0.35},
  ],
  'entryPoints': [
    {'description': 'Roof'},
    {'description': 'Hallway'},
  ],
  'exitPoints': [
    {'description': 'Roof'},
    {'description': 'Hallway'},
  ],
  'intermediatePoints' : [
    {'description': 'West wing', 'path': ['Roof', 'Hallway']},
    {'description': 'Main building', 'path': ['Roof', 'Courtyard']},
  ]
});
