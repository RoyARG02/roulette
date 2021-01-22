import '../_internal/mission.dart';

final aHouseOfCards = Mission.fromJson({
  'missionNo': 9,
  'name': 'A House of Cards',
  'targets': [
    {'name': 'Hendrik Schmutz'},
    {'name': 'Mohammad Bin Faisal Al-Khalifa'},
    {'name': 'Tariq Abdul Lateef'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
  ],
  'specialComplications': [
    {'description': 'Never step onto the 7th or 8th floor', 'chance': 0.40},
  ]
});
