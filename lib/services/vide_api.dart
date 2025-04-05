import 'package:http/http.dart' as http;
import 'package:orange_valley_caa/models/video.dart';

 
Future<List<Video>> getVideoFromApi() async {
  final url_video = 'https://orangevalleycaa.org/api/videos';
  var response = await http.get(Uri.parse(url_video));
  if (response.statusCode == 200) {

    var jsonResponse = response.body;
    // Assuming the response is a JSON array of video objects
     return videoFromJson(jsonResponse);
  } else {
    return [];
  }
}
