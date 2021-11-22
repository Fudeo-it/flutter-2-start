class CityModel {
  final String name;
  final double temperature;
  final String backgroundImageUrl;
  final List<DayForecastModel> sevenDaysForecast;

  const CityModel({
    required this.name,
    required this.temperature,
    required this.backgroundImageUrl,
    required this.sevenDaysForecast,
  });
}

class DayForecastModel {
  final String name;
  final double temperature;

  const DayForecastModel({
    required this.name,
    required this.temperature,
  });
}

const weatherData = [
  CityModel(
    name: "Peschici",
    temperature: 21,
    backgroundImageUrl:
        "https://images.unsplash.com/photo-1586078074298-05dca4848695?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1035&q=80",
    sevenDaysForecast: [
      DayForecastModel(
        name: "Oggi",
        temperature: 20,
      ),
      DayForecastModel(
        name: "12",
        temperature: 23,
      ),
      DayForecastModel(
        name: "13",
        temperature: 21,
      ),
      DayForecastModel(
        name: "14",
        temperature: 20,
      ),
      DayForecastModel(
        name: "15",
        temperature: 24,
      ),
      DayForecastModel(
        name: "16",
        temperature: 22,
      ),
      DayForecastModel(
        name: "17",
        temperature: 23,
      ),
    ],
  ),
  CityModel(
    name: "Torino",
    temperature: 11,
    backgroundImageUrl:
        "https://images.unsplash.com/photo-1508590048677-e6c6d818f136?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=987&q=80",
    sevenDaysForecast: [
      DayForecastModel(
        name: "Oggi",
        temperature: 13,
      ),
      DayForecastModel(
        name: "12",
        temperature: 11,
      ),
      DayForecastModel(
        name: "13",
        temperature: 14,
      ),
      DayForecastModel(
        name: "14",
        temperature: 17,
      ),
      DayForecastModel(
        name: "15",
        temperature: 16,
      ),
      DayForecastModel(
        name: "16",
        temperature: 14,
      ),
      DayForecastModel(
        name: "17",
        temperature: 9,
      ),
    ],
  ),
  CityModel(
    name: "Milano",
    temperature: 8,
    backgroundImageUrl:
        "https://images.unsplash.com/photo-1534088568595-a066f410bcda?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1051&q=80",
    sevenDaysForecast: [
      DayForecastModel(
        name: "Oggi",
        temperature: 9,
      ),
      DayForecastModel(
        name: "12",
        temperature: 7,
      ),
      DayForecastModel(
        name: "13",
        temperature: 10,
      ),
      DayForecastModel(
        name: "14",
        temperature: 6,
      ),
      DayForecastModel(
        name: "15",
        temperature: 4,
      ),
      DayForecastModel(
        name: "16",
        temperature: 6,
      ),
      DayForecastModel(
        name: "17",
        temperature: 7,
      ),
    ],
  ),
];
