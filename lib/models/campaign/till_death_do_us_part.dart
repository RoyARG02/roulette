import 'package:roulette/models/_internal/mission.dart';

final tillDeathDoUsPart = Mission(
  missionNo: 8,
  name: "Till Death Do Us Part",
  targets: Mission.createTargetListFromStringList([
    "Buddy Muldoon",
    "John LeBlanc",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Gravity",
    "Swamp",
    "Shovel",
    "Chandelier",
    "Elephant Rifle",
  ]),
  complications: Mission.createSpecialComplicationMapFromStringMap([
    {"Never go to the second floor": 0.55},
  ]),
  entryPoints: Mission.createEntryPointListFromStringList([
    "Left door",
    "Front door",
    "Right door",
  ]),
  exitPoints: Mission.createExitPointListFromStringList([
    "Your boat",
    "The priest's boat",
  ]),
);
