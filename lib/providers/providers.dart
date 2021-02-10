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

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/app_model/current_mission_notifier.dart';
import '../models/app_model/roulette_parameters_provider.dart';
import '../services/roulette_service.dart';

/// Provides the [RouletteService] to be used by the app.
final rouletteServiceProvider = Provider<RouletteService>((ref) => RouletteService());

/// Provides the [RouletteParameter] to be used by the app.
final rouletteParameterProvider = StateNotifierProvider<RouletteParameterProvider>((ref) => RouletteParameterProvider());

/// Provides the [CurrentMission] as obtained from the [RouletteService].
final currentMissionProvider = StateNotifierProvider<CurrentMissionNotifier>((ref) => CurrentMissionNotifier(null));
