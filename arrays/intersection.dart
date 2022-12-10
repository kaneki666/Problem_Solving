// Find Intersection
// Have the function FindIntersection(strArr) read the array of strings stored in strArr which will contain 2 elements: the first element will represent a list of comma-separated numbers sorted in ascending order, the second element will represent a second list of comma-separated numbers (also sorted). Your goal is to return a comma-separated string containing the numbers that occur in elements of strArr in sorted order. If there is no intersection, return the string false.
// Examples
// Input: ["1, 3, 4, 7, 13", "1, 2, 4, 13, 15"]
// Output: 1,4,13
// Input: ["1, 3, 9, 10, 17, 18", "1, 4, 9, 10"]
// Output: 1,9,10

String FindIntersection(List strArr) {
  Map values = {};
  String temp = '';
  List arr1 = strArr[0].split(',');
  List arr2 = strArr[1].split(',');
  arr1.forEach((e) => values[e] = 1);

  arr2.forEach((e) {
    if (values[e] == 1) {
      temp += '$e,';
    } else {
      values[e] = 1;
    }
  });

  // code goes here
  return temp.substring(0, temp.length - 1);
}

// keep this function call here
void main() {
  print(FindIntersection(["1, 3, 9, 10, 17, 18", "1, 4, 9, 10"]));
}
