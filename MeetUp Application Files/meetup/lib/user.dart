// ignore_for_file: file_names
import 'Meeting.dart';
class User{
  int _userId = -1;
  String _userName = "";
  final List<Meeting> _meetings = [];

  User(int id, String userName){//user constructor
    _userId = id;
    _userName = userName;
  }

//returns a list of all meetings where DateTime.now > meeting.endTime
  List<Meeting> getPastMeetings(){
    List<Meeting> pastMeetings = [];//initialize new list of meetings
    for(Meeting m in _meetings)
    {
      if(m.isMeetingPassed())//check if each meeting has already passed
      {
        pastMeetings.add(m);//if so, add to list
      }
    }
    return pastMeetings;//return the list of passed meetings
  }

//returns a list of all meetings where DateTime.now < meeting.endTime
  List<Meeting> getUpcomingMeetings(){
    List<Meeting> upcomingMeetings = [];
    for(Meeting m in _meetings)
    {
      if(!m.isMeetingPassed())//check if each meeting has already passed
      {
        upcomingMeetings.add(m);//if not, add to list
      }
    }
    return upcomingMeetings;
  }

//add a meeting to the user's meeting list
  void addMeeting(Meeting meeting)
  {
    _meetings.add(meeting);
  }

//remove a meeting from the user's meeting list
  void removeMeeting(Meeting meeting)
  {
    for (Meeting m in _meetings) {
      //search for the meeting by id
      if(m.meetingId == meeting.meetingId)
      {
        _meetings.remove(m);
      }
      break;
    }
  }
}
