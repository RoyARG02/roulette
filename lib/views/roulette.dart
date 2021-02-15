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

import '../commands/spin_roulette.dart';
import '../views/sections/choose_complication.dart';
import '../views/sections/roulette_results.dart';
import '../views/sections/select_mission.dart';

class Roulette extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Roulette'),
        actions: [
          RouletteHelpButton(),
        ],
      ),
      body: RouletteBody(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: FloatingActionButton.extended(
        tooltip: 'Roll the roulette',
        icon: const Icon(Icons.refresh),
        label: const Text('Make it go!'),
        onPressed: () => SpinRouletteCommand().run(context),
      ),
      bottomNavigationBar: RouletteBottomBar(),
    );
  }
}

class RouletteHelpButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      // TODO: Change the colors to make it "visible".
      icon: const Icon(Icons.help_center_outlined),
      label: const Text('HELP'),
      onPressed: () {},
    );
  }
}

class RouletteBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          SelectMission(),
          ChooseComplication(),
          RouletteResults(),
        ],
      ),
    );
  }
}

// TODO: The spacing of these buttons don't feel right. The FAB too is overlapping roulette results with long text.
class RouletteBottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: ButtonBar(
        alignment: MainAxisAlignment.end,
        layoutBehavior: ButtonBarLayoutBehavior.padded,
        children: [
          TextButton.icon(
            icon: const Icon(Icons.arrow_back),
            label: const Text('Previous roulette'),
            onPressed: () {},
          ),
          TextButton.icon(
            icon: const Icon(Icons.file_upload),
            label: const Text('Import roulette'),
            onPressed: () {},
          ),
          TextButton.icon(
            icon: const Icon(Icons.file_download),
            label: const Text('Export roulette'),
            onPressed: () {},
          ),
          TextButton.icon(
            icon: const Icon(Icons.arrow_forward),
            label: const Text('Next roulette'),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
