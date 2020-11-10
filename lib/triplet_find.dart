import 'dart:io';
import 'dart:math';

import 'package:algorithms_second_lab/quick_sort.dart';

List<dynamic> getInputValues() {
  print('Please, enter array length(3 <= N <= 1000)');
  var arraySize = int.parse(stdin.readLineSync());
  print('Please, enter your array of numbers(Example: 1 2 3 4 5)');
  var numbers = stdin
      .readLineSync()
      .split(' ')
      .map((stringNumber) => int.parse(stringNumber))
      .toList();
  print('Please, enter required number(1 <= P <= 3 * 10^9)');
  var requiredTripletSum = int.parse(stdin.readLineSync());
  if (requiredTripletSum >= 1 &&
      requiredTripletSum <= 3 * pow(10, 9) &&
      arraySize >= 3 &&
      arraySize <= 1000) {
    for (var number in numbers) {
      if (number >= 1 && number <= pow(10, 9)) {
        return [numbers, arraySize, requiredTripletSum];
      }
    }
  } else {
    print('Your input values should comply with the requirements');
    return null;
  }
}

bool findTriplet(List<int> numbers, int arraySize, int requiredTripletSum) {
  quickSort(numbers, 0, arraySize - 1);
  for (var firstTripletElementIndex = 0;
      firstTripletElementIndex < arraySize - 2;
      firstTripletElementIndex++) {
    var leftElementIndex = firstTripletElementIndex + 1;
    var rightElementIndex = arraySize - 1;
    while (leftElementIndex < rightElementIndex) {
      var actualTripletSum = numbers[firstTripletElementIndex] +
          numbers[leftElementIndex] +
          numbers[rightElementIndex];
      if (actualTripletSum == requiredTripletSum) {
        return true;
      } else if (actualTripletSum < requiredTripletSum) {
        leftElementIndex++;
      } else {
        rightElementIndex--;
      }
    }
  }
  return false;
}
