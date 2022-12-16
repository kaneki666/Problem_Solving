class Solution {
  String goalParser(String command) {
    command = command.replaceAll('()', "o");
    command = command.replaceAll('(al)', "al");
    return command;
  }
}

void main() {
  Solution s = Solution();
  print(
    s.goalParser("G()()()()(al)"),
  );
}
