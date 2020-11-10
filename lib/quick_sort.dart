void quickSort(List<int> numbers, int startIndex, int endIndex) {
  if (startIndex < endIndex) {
    int partitioningIndex = partition(numbers, startIndex, endIndex);
    quickSort(numbers, startIndex, partitioningIndex - 1);
    quickSort(numbers, partitioningIndex + 1, endIndex);
  }
}

int partition(List<int> numbers, int startIndex, int endIndex) {
  var pivot = numbers[endIndex];
  int smallerElementIndex = startIndex - 1;
  for (int currentElementIndex = startIndex;
      currentElementIndex < endIndex;
      currentElementIndex++) {
    if (numbers[currentElementIndex] < pivot) {
      smallerElementIndex++;
      var temp = numbers[smallerElementIndex];
      numbers[smallerElementIndex] = numbers[currentElementIndex];
      numbers[currentElementIndex] = temp;
    }
  }
  var temp = numbers[smallerElementIndex + 1];
  numbers[smallerElementIndex + 1] = numbers[endIndex];
  numbers[endIndex] = temp;
  return smallerElementIndex + 1;
}
