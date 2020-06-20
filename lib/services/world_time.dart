import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; //location name for the UI
  String time; //time in that location
  String flag; //url to asset flag location
  String url; //location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

  Future<void> getTime() async {
    Response response = await get('http://worldtimeapi.org/api/timezone/$url');
    Map data = jsonDecode(response.body);

    // get properties from data
    String dateTime = data['datetime'];
    String offsetHours = data['utc_offset'].substring(1, 3);
    String offsetMinutes = data['utc_offset'].substring(4, 6);
    DateTime now = DateTime.parse(dateTime);
    now = now.add(Duration(
        hours: int.parse(offsetHours), minutes: int.parse(offsetMinutes)));

    //set time property
    time = now.toString();
  }
}
