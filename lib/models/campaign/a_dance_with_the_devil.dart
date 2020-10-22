import '../_internal/mission.dart';

final aDanceWithTheDevil = Mission(
  missionNo: 10,
  name: "A Dance with the Devil",
  targets: Mission.createTargetListFromStringList([
    "Anthony Martinez",
    "Vanna Ketlyn",
    "Eve",
    "Maynard John",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Accidents",
    "Meat Cleaver",
    "Stiletto",
    "Cane sword",
    "Dragunov SVD",
  ]),
  specialComplications: Mission.createSpecialComplicationMapFromStringMap(
    {"Steal the video tape": 0.35},
  ),
  entryPoints: Mission.createEntryPointListFromStringList([
    "Heaven Party",
    "Hell Party",
  ]),
  exitPoints: [],
);
