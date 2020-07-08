import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for the UI
  String time; //time in that location
  String flag; //url to asset flag location
  String url; //location url for api endpoint
  bool isDayTime; //true or false if daytime or not

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    try {
      Response response =
          await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);

      // get properties from data
      String dateTime = data['datetime'];
      String offsetHours = data['utc_offset'].substring(1, 3);
      String offsetMinutes = data['utc_offset'].substring(4, 6);
      DateTime now = DateTime.parse(dateTime);
      now = now.add(Duration(
          hours: int.parse(offsetHours), minutes: int.parse(offsetMinutes)));

      //set time property
      isDayTime = now.hour > 6 && now.hour < 20 ? true : false;
      time = DateFormat.jm().format(now);
    } catch (e) {
      print(e);
      time = 'could not get time data';
    }
  }
}
