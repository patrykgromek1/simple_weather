import 'package:dio/dio.dart';

class WeatherRemoteDataSource {
  Future<Map<String, dynamic>?> getWeatherData({
    required String city,
  }) async {
    final response = await Dio().get<Map<String, dynamic>>(
        "http://api.weatherapi.com/v1/current.json?key=eac40a536a2c429aae9151952230704&q=$city&aqi=no");
    return response.data;
  }
}
