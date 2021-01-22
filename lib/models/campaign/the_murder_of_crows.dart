import '../_internal/mission.dart';

final theMurderOfCrows = Mission.fromJson({
  'missionNo': 5,
  'name': 'The Murder of Crows',
  'targets': [
    {'name': 'Mark Purayah II'},
    {'name': 'Angelina Mason'},
    {'name': 'Raymond Kulinsky'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Kitchen knife'},
    {'name': 'Kazo TRG'},
  ],
  'specialComplications': [
    {'description': 'Retrieve the SG552', 'chance': 0.30},
  ],
});
