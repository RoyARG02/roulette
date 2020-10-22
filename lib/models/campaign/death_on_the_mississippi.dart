import '../_internal/mission.dart';

final deathOnTheMississippi = Mission(
  missionNo: 7,
  name: "Death on the Mississippi",
  targets: Mission.createTargetListFromStringList([
    "Skip Muldoon",
    "Gator gang member",
    "Gator gang member",
    "Gator gang member",
    "Gator gang member",
    "Gator gang member",
    "Gator gang member",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Kitchen knife",
    "Fire extinguisher",
    "Shovel",
    "Accidents",
    "Desert Eagle",
  ]),
  specialComplications: Mission.createSpecialComplicationMapFromStringMap(
    {"Retrieve the FN-2000": 0.35},
  ),
  entryPoints: Mission.createEntryPointListFromStringList([
    "Engine room",
    "Cabins",
  ]),
  exitPoints: [],
);
