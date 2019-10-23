// Challenge 1
// Write failing test cases for the next two challenges

// Challenge 2
// All Pairs that Sum to Target
// Create a function that returns all pairs of numbers in an list that sum to a target.
// Sort the pairs in ascending order with respect to the smaller number,
// then order each pair in this order: [smaller, larger].
// Examples
// allPairs([2, 4, 5, 3,2,5], 7) ➞ [[2, 5], [3, 4]]
/// 2 + 5 = 7, 3 + 4 = 7

List<List<int>> allPairs(List<int> numList, int x) {
  List<List<int>> finalList = [];
  List memoryList = [];

  for (int i = 0; i < numList.length; i++) {
    List<int> tempList = [];
    for (int j = i + 1; j < numList.length; j++) {
      if (!memoryList.contains(numList[i])) {
        if (numList[i] + numList[j] == x) {
          tempList.add(numList[i]);
          tempList.add(numList[j]);
          memoryList.add(numList[i]);
          memoryList.add(numList[j]);
          tempList.sort();
          finalList.add(tempList);
        }
      }
    }
  }
  return finalList;
}

// Challenge 3
// Almost Sorted Sequence
// An almost-sorted sequence is a sequence that is strictly increasing
// if you remove a single element from the list
// (no more, no less). Write a function that returns true if an list is almost-sorted,
// and false otherwise.
/// For example, if you remove 80 from the first example,
/// it is perfectly sorted in ascending order.
// Examples
// almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41] ) ➞ true
bool almostSorted(List x) {
  if (x.isEmpty) {
    return false;
  }
  if (x.length == 1 || x.length == 2) {
    return true;
  }
  int count = 0;
  for (int i = 0; i < x.length - 1; i++) {
    if (x[i] > x[i + 1]) {
      count++;
    }
  }
  if (count == 0) {
    return false;
  }
  if (count == 1) {
    return true;
  } else {
    return false;
  }
}

main() {
  print(almostSorted([1, 2, 5, 4, 6]));
  print(almostSorted([1, 3, 5, 9, 11, 80, 15, 33, 37, 41]));
  print(allPairs([2, 2, 5, 4, 5, 3, 1, 6, 2, 5], 7));
}
