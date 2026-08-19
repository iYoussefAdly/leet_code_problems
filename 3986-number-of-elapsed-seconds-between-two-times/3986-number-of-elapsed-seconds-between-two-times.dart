class Solution {
  int secondsBetweenTimes(String startTime, String endTime) {
    List<String> startTimeListString = startTime.split(":");
    List<int> startTimeList = [];
    List<String> endTimeListString = endTime.split(":");
    List<int> endTimeList = [];
    for (var element in startTimeListString) {
      startTimeList.add(int.parse(element));
    }
    for (var element in endTimeListString) {
      endTimeList.add(int.parse(element));
    }
    int endTimeResult = 0;
    int startTimeResult = 0;
    for (int i = 0; i < startTimeList.length; i++) {
      if (i == 0) {
        startTimeResult += (startTimeList[i] * 60 * 60);
        endTimeResult += (endTimeList[i] * 60 * 60);
      } else if (i == 1) {
        startTimeResult += (startTimeList[i] * 60);
        endTimeResult += (endTimeList[i] * 60);
      } else {
        startTimeResult += startTimeList[i];
        endTimeResult += endTimeList[i];
      }
    }
    return endTimeResult - startTimeResult;
  }
}