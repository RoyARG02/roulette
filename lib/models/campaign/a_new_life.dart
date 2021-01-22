import '../_internal/mission.dart';
import '../_internal/randomizer.dart';

final aNewLife = Mission.fromJson({
  'missionNo': 4,
  'name': 'A New Life',
  'targets': [
    {'name': 'Vinnie Sinistra'},
  ],
  'methods': [
    {'name': 'Kitchen knife'},
    {'name': 'Fiber Wire'},
    {'name': 'Nailer'},
    {'name': 'RU-AP Mine'},
    {'name': 'Baseball bat'},
    {'name': 'Gun'},
    {'name': 'Glass ceiling'},
    {'name': 'Car'},
    {'name': 'Gravity'},
    {'name': 'Swimming pool'},
    {'name': 'Hedge cutter'},
    {'name': 'Bull .480'},
    if (Randomizer.randomDouble <= 0.29)
      {'name': 'Lethal dose of boredom that is already killing him from the inside'},
  ],
  'specialComplications': [
    {'description': 'Vinnie\'s wife must survive', 'chance': 0.39},
    {'description': 'Vinnie\'s dog must survive', 'chance': 0.44},
  ],
  'entryPoints': [
    {'description': 'Garage'},
    {'description': 'Basement'},
    {'description': 'Front door'},
    {'description': 'Backyard'},
  ],
  'exitPoints': [
    {'description': 'Garage'},
    {'description': 'Front door'},
  ],
});
