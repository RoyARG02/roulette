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

import '../components/complication_slider.dart';
import '../sections/section.dart';

/// The [Section] displaying the option to choose number of [Complication]s to 
/// be applied to this roulette.
class ChooseComplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Section(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      members: [
        SectionMember(child: const Text('NO. OF COMPLICATIONS')),
        SectionMember(child: ComplicationSlider()),
      ],
    );
  }
}
