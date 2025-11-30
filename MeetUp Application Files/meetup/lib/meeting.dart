// ignore_for_file: file_names
import 'User.dart';
class Meeting 
{
  User user = User(-1, "");
  DateTime _startTime = DateTime.now();
  DateTime _endTime = DateTime.now();
  String _meetingName = "";
  int meetingId = -1;
  NotificationTime notificationTime = NotificationTime.none;

  bool isMeetingPassed()  {
    //if the meeting ends later than the current time, it has not yet passed
    if(_endTime.isAfter(DateTime.now())){
      return false;
    }
    return true; //otherwise, it has passed
  }

//update all fields with user inputted data
  void updateMeetingInformation(String meetingName, DateTime startTime, DateTime endTime){
    _meetingName = meetingName;
    _startTime = startTime;
    _endTime = endTime;
  }

}

enum NotificationTime{
  sevenDays,
  threeDays,
  oneDay,
  twelveHours,
  sixHours,
  oneHour,
  thirtyMinutes,
  none
}