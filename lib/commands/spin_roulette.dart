// Roulette
//     Copyright (C) 2020, 2021  Anurag Roy
//
//     This program is free software: you can redistribute it and/or modify
//     it under the terms of the GNU General Public License as published by
//     the Free Software Foundation, either version 3 of the License, or
//     (at your option) any later version.
//
//     This program is distributed in the hope that it will be useful,
//     but WITHOUT ANY WARRANTY; without even the implied warranty of
//     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//     GNU General Public License for more details.
//
//     You should have received a copy of the GNU General Public License
//     along with this program.  If not, see <https://www.gnu.org/licenses/>.

import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/app_model/roulette_parameters.dart';
import '../models/app_model/current_mission.dart';
import '../providers/providers.dart';

import 'base_command.dart';

class SpinRouletteCommand extends BaseCommand{
  void run(BuildContext context){
    RouletteParameters parameters = context.read(rouletteParameterProvider.state);
    CurrentMission newMission = context.read(rouletteServiceProvider).spinRoulette(parameters.mission, parameters.complications);
    // TODO: debug
    print('${newMission.missionNo} ${newMission.name}');
    print('${newMission.entryPoint}, ${newMission.exitPoint}');
    print('${newMission.toJson()}');
    //read(currentMissionProvider).updateCurrentMission(newMission);
  }
}