import 'dart:math';

import 'package:algorithms_second_lab/triplet_find.dart';

void main(List<String> arguments) {
  var inputValues = getInputValues();
  if (inputValues != null) {
    if (findTriplet(inputValues[0], inputValues[1], inputValues[2])) {
      print('There are needed numbers');
    } else {
      print('There aren\'t needed numbers');
    }
  }
}
