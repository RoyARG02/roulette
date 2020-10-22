import '../_internal/mission.dart';

final amendmentXvv = Mission(
  missionNo: 11,
  name: "Amendment XXV",
  targets: Mission.createTargetListFromStringList([
    "Daniel Morris",
    "Mark Parchezzi III",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Gravity",
    "Kitchen knife",
    "Nailer",
    "Custom 1911",
  ]),
  specialComplications: Mission.createSpecialComplicationMapFromStringMap(
    {
      "The fire alarm must not be triggered": 0.30,
      "Daniel's dog must survive": 0.35,
    },
  ),
  entryPoints: Mission.createEntryPointListFromStringList([
    "Roof",
    "Hallway",
  ]),
  exitPoints: Mission.createExitPointListFromStringList([
    "Roof",
    "Hallway",
  ]),
  intermediatePoints: Mission.createIntermediatePointsFromMap({
    "West wing": ["Roof", "Hallway"],
    "Main Building": ["Roof", "Courtyard"],
  }),
);
