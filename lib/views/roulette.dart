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

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:roulette/commands/spin_roulette.dart';

import '../providers/providers.dart';

class Roulette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RouletteBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Roll the roulette',
        icon: Icon(Icons.refresh),
        label: Text('Make it go!'),
        onPressed: () => SpinRouletteCommand().run(context),
      ),
    );
  }
}

class RouletteBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, ScopedReader watch) {
    return Column(
      children: [
        DropdownButton(
          value: watch(rouletteParameterProvider.state).mission,
          items: <String>['Random mission', 'A Vintage Year']
              .map((String mission) => DropdownMenuItem<String>(
                    child: Text(mission),
                    value: mission,
                  ))
              .toList(),
          onChanged: (String? selected) =>
              context.read(rouletteParameterProvider).setMissionParameter(selected!),
        ),
        Slider(
          min: -1,
          max: 4,
          divisions: 5,
          value: watch(rouletteParameterProvider.state).complications.toDouble(),
          onChanged: (double selected) => context.read(rouletteParameterProvider).setComplicationParameter(selected.toInt()),
        ),
      ],
    );
  }
}
