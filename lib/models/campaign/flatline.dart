import 'package:roulette/models/_internal/mission.dart';

final flatline = Mission(
  missionNo: 3,
  name: "Flatline",
  targets: Mission.createTargetListFromStringList([
    "Carmine DeSalvo(Green)",
    "Rudy Menzana(Pink)",
    "Lorenzo Lombardo(Blue)",
  ]),
  methods: Mission.createMethodListFromStringList([
    "Fiber wire",
    "RU-AP mine",
    "Gun",
    "Pool",
    "Gravity",
    "Accidents",
  ]),
  complications: [],
  entryPoints: Mission.createEntryPointListFromStringList([
    "Second floor",
    "Front door",
    "Security station",
    "Gym",
  ]),
  exitPoints: [],
);
