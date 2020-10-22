import '../_internal/mission.dart';
import '../_internal/randomizer.dart';

final curtainsDown = Mission(
  missionNo: 2,
  name: "Curtains Down",
  targets: Mission.createTargetListFromStringList([
    "Alvaro D'Alvade",
    "Richard Delahunt",
    if (Randomizer.randomDouble <= 0.2) "Albert Fournier",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP Mine",
    "Gun",
    "Gravity",
    "Falling object",
    "Hammer",
    "Screwdriver",
    "Real WWI pistol",
  ]),
  specialComplications: Mission.createSpecialComplicationMapFromStringMap(
    {
      "Kill Delahunt first.": 0.45,
      "Retrieve the Prop WWI pistol.": 0.45,
    },
  ),
  entryPoints: Mission.createEntryPointListFromStringList([
    "Left and down the stairs",
    "Through the opera hall",
    "Right of the hall and down the stairs",
  ]),
  exitPoints: [],
);
