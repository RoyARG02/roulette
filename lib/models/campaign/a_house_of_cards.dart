import '../_internal/mission.dart';

final aHouseOfCards = Mission(
  missionNo: 9,
  name: "A House of Cards",
  targets: Mission.createTargetListFromStringList([
    "Hendrik Schmutz",
    "Mohammad Bin Faisal Al-Khalifa",
    "Tariq Abdul Lateef",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Gravity",
  ]),
  specialComplications: Mission.createSpecialComplicationMapFromStringMap(
    {"Never step into 7th or 8th floors": 0.40},
  ),
  entryPoints: [],
  exitPoints: [],
);
