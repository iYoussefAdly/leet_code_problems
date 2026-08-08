class Solution {
  List<List<int>> transpose(List<List<int>> matrix) {
  if (matrix.isEmpty) return [];
  int rows = matrix.length;
  int cols = matrix[0].length;
  return List.generate(cols, (c) => List.generate(rows, (r) => matrix[r][c]));
}
}
