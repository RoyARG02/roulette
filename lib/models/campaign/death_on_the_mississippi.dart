import '../_internal/mission.dart';

final deathOnTheMississippi = Mission.fromJson({
  'missionNo': 7,
  'name': 'Death on the Mississippi',
  'targets': [
    {'name': 'Skip Muldoon'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
    {'name': 'Gator gang member'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Kitchen knife'},
    {'name': 'Fire extinguisher'},
    {'name': 'Shovel'},
    {'name': 'Accident kill'},
    {'name': 'Desert Eagle'},
  ],
  'specialComplications': [
    {'description': 'Retrieve the FN-2000', 'chance': 0.35},
  ],
  'entryPoints': [
    {'description': 'Engine room'},
    {'description': 'Cabins'},
  ],
});
