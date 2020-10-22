import '../_internal/mission.dart';

final theMurderOfCrows = Mission(
  missionNo: 5,
  name: "The Murder of Crows",
  targets: Mission.createTargetListFromStringList([
    "Mark Purayah II",
    "Angelina Mason",
    "Raymond Kulinsky",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Gravity",
    "Kitchen knife",
    "Kazo TRG",
  ]),
  specialComplications: Mission.createSpecialComplicationMapFromStringMap(
    {"Retrieve the SG552": 0.30},
  ),
  entryPoints: [],
  exitPoints: [],
);
