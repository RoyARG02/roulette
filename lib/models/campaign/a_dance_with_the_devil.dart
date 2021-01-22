import '../_internal/mission.dart';

final aDanceWithTheDevil = Mission.fromJson({
  'missionNo': 10,
  'name': 'A Dance with The Devil',
  'targets': [
    {'name': 'Anthony Martinez'},
    {'name': 'Vanna Ketlyn'},
    {'name': 'Eve'},
    {'name': 'Maynard John'}
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Accident kill'},
    {'name': 'Meat Cleaver'},
    {'name': 'Stilleto'},
    {'name': 'Cane Sword'},
    {'name': 'Dragunov SVD'},
  ],
  'specialComplications': [
    {'description': 'Steal the video tape', 'chance': 0.35},
  ],
  'entryPoints' : [
    {'description': 'Heaven Party'},
    {'description': 'Hell Party'},
  ],
});
