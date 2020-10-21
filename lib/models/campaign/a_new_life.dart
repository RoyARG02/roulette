import 'package:roulette/models/_internal/mission.dart';
import 'package:roulette/models/_internal/randomizer.dart';

final aNewLife = Mission(
  missionNo: 4,
  name: "A New Life",
  targets: Mission.createTargetListFromStringList([
    "Vinnie Sinistra",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Kitchen knife",
    "Fiber wire",
    "Nailer",
    "RU-AP mine",
    "Baseball bat",
    "Gun",
    "Glass ceiling",
    "Car",
    "Gravity",
    "Swimming pool",
    "Hedge cutter",
    "Bull .480",
    if (Randomizer.randomDouble <= 0.29)
      "Lethal dose of boredom that is already killing him from the inside",
  ]),
  complications: Mission.createSpecialComplicationMapFromStringMap([
    {"Vinnie's wife must survive": 0.39},
    {"Vinnie's dog must survive": 0.44},
  ]),
  entryPoints: Mission.createEntryPointListFromStringList([
    "Garage",
    "Basement",
    "Front door",
    "Backyard",
  ]),
  exitPoints: Mission.createExitPointListFromStringList([
    "Garage",
    "Front door",
  ]),
);
