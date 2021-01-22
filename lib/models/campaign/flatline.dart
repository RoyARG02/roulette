import '../_internal/mission.dart';

final flatline = Mission.fromJson({
  'missionNo': 3,
  'name': 'Flatline',
  'targets': [
    {'name': 'Carmine DeSalvo(Green)'},
    {'name': 'Rudy Menzana(Pink)'},
    {'name': 'Lorenzo Lombardo(Blue)'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Pool'},
    {'name': 'Gravity'},
    {'name': 'Accident kill'},
  ],
  'entryPoints': [
    {'description': 'Second Floor'},
    {'description': 'Front door'},
    {'description': 'Security station'},
    {'description': 'Gym'},
  ],
});
