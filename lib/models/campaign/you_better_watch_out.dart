import 'package:roulette/models/_internal/mission.dart';
import 'package:roulette/models/_internal/randomizer.dart';

final youBetterWatchOut = Mission(
  missionNo: 6,
  name: "You Better Watch Out...",
  targets: Mission.createTargetListFromStringList([
    "Lorne de Havilland",
    "Chad Bingham Jr.",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Gravity",
    "Jacuzzi/Water",
    "Kitchen knife",
    if (Randomizer.randomDouble <= 0.29) "Old age",
  ]),
  complications: Mission.createSpecialComplicationMapFromStringMap([
    {"Kill \"?\"": 0.44},
    {"Lorne's dog must survive": 0.44},
  ]),
  entryPoints: Mission.createEntryPointListFromStringList([
    "Guest elevator",
    "Staff elevator",
  ]),
  exitPoints: Mission.createExitPointListFromStringList([
    "Helicopter",
    "Boat",
  ]),
  intermediatePoints: Mission.createIntermediatePointsFromMap({
    "Second Floor": ["Elevator", "Staircase"]
  }),
);
