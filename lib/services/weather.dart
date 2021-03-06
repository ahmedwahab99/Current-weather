import 'package:climate/services/location.dart';
import 'package:climate/services/networking.dart';
import 'package:climate/utilities/constants.dart';

class WeatherModel {

   getCityWeather(String desiredCity)async
  {
    Networking net=Networking(url: 'https://api.openweathermap.org/data/2.5/weather?q=$desiredCity&appid=$apiKey&units=metric');
    var weatherData=await net.getWeatherData();
    return weatherData;
  }


  Future<dynamic> getLocationWeather()async
  {
    Location loc= Location();

    await loc.getCurrentLocation();

    Networking net=Networking(url: '${weatherMapURL}lat=${loc.latitude}&lon=${loc.longtitude}&appid=$apiKey&units=metric');
    var weatherData=await net.getWeatherData();
    return weatherData;
  }


  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '๐ฉ';
    } else if (condition < 400) {
      return '๐ง';
    } else if (condition < 600) {
      return 'โ๏ธ';
    } else if (condition < 700) {
      return 'โ๏ธ';
    } else if (condition < 800) {
      return '๐ซ';
    } else if (condition == 800) {
      return 'โ๏ธ';
    } else if (condition <= 804) {
      return 'โ๏ธ';
    } else {
      return '๐คทโ';
    }
  }

  String getMessage(int temp) {
    if (temp > 30) {
      return 'It\'s ๐ฆ time';
    } else if (temp > 25) {
      return 'Time for shorts and ๐';
    } else if (temp < 15) {
      return 'You\'ll need ๐งฃ and ๐งค';
    } else {
      return 'Bring a ๐งฅ just in case';
    }
  }

  int getWallpaper( int temp )
  {
    if (temp > 30) {
      return 1;
    } else if (temp > 25) {
      return 2;
    } else if (temp > 15) {
      return 3;
    } else if (temp > 5) {
      return 4;
    }
    else{
      return 5;
    }

  }
}
