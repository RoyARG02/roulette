import '../_internal/mission.dart';

final tillDeathDoUsPart = Mission.fromJson({
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
