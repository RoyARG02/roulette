import 'package:roulette/models/_internal/mission.dart';

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
  complications: Mission.createSpecialComplicationMapFromStringMap([
    {"The fire alarm must not be triggered": 0.30},
    {"Daniel's dog must survive": 0.35},
  ]),
  entryPoints:[],
  exitPoints: [],
  intermediatePoints: Mission.createIntermediatePointsFromMap({
    "Main Building": ["Roof", "Hallway"],
    "West wing": ["Roof", "Courtyard"],
  }),
);
