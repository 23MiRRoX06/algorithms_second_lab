import 'package:algorithms_second_lab/quick_sort.dart';
import 'package:algorithms_second_lab/triplet_find.dart';
import 'package:test/test.dart';

void main() {
  test('triplet_find_test_case_1', () {
    bool actualValue = findTriplet([17, 18, 45, 4, 65], 5, 127);
    expect(actualValue, true);
  });

  test('triplet_find_test_case_2', () {
    bool actualValue = findTriplet([96, 81, 13, 51, 11, 28, 17], 7, 78);
    expect(actualValue, false);
  });

  test('quick_sort_test', () {
    var numberList = [17, 4, 16, 12, 22, 45, 11, 8, 17];
    quickSort(numberList, 0, numberList.length - 1);
    expect(numberList, [4, 8, 11, 12, 16, 17, 17, 22, 45]);
  });
}
