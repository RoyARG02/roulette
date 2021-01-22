import '../_internal/mission.dart';
import '../_internal/randomizer.dart';

final curtainsDown = Mission.fromJson({
  'missionNo': 2,
  'name': 'Curtains Down',
  'targets': [
    {'name': 'Alvaro D\'Alvade'},
    {'name': 'Richard Delahunt'},
    if(Randomizer.randomDouble <= 0.2)
    {'name': 'Albert Fournier'},
  ],
  'methods': [
    {'name': 'Fiber Wire'},
    {'name': 'RU-AP Mine'},
    {'name': 'Gun'},
    {'name': 'Gravity'},
    {'name': 'Falling object'},
    {'name': 'Hammer'},
    {'name': 'Screwdriver'},
    {'name': 'Real WW1 pistol'},
  ],
  'specialComplications': [
    {'description': 'Kill Delahunt first', 'chance': 0.45},
    {'description': 'Retrieve the Prop WW1 pistol', 'chance': 0.45},
  ],
  'entryPoints': [
    {'description': 'Left and down the stairs'},
    {'description': 'Through the opera hall'},
    {'description': 'Right of the hall and down the stairs'},
  ],
});
