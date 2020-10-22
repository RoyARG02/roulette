import '../_internal/mission.dart';

final aVintageYear = Mission(
  missionNo: 1,
  name: "A Vintage Year",
  targets: Mission.createTargetListFromStringList([
    "Don Fernando Delgado",
    "Manuel Delgado",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Gravity",
    "Falling object",
    "Water/Wine",
    "Kitchen knife",
    "Hammer",
    "Fire Extinguisher",
    "Snub Nosed(Revolver)",
   ]),
  specialComplications: {},
  entryPoints: Mission.createEntryPointListFromStringList([
    "Left from the beginning",
    "Right from the beginning",
    "Through the party to the Wine Cellar",
    "Through the party to the Hacienda",
  ]),
  exitPoints: Mission.createExitPointListFromStringList([
    "Cliffside",
    "Elevator",
  ]),
);
