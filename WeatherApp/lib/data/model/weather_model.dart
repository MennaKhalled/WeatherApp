class WeatherModel {
  final String last_updated;
  final double temp_c;
  final String condition;
  final int code;

  WeatherModel(
      {this.code = 0,
      this.condition = "",
      this.last_updated = "",
      this.temp_c = 0});

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
        last_updated: json['current']['last_updated'],
        temp_c: json['current']['temp_c'],
        condition: json['current']['condition']['text'],code: json['current']['condition']['code']);
  }

  Map<String, dynamic> toJson() {
    return {
      "last_updated": this.last_updated,
      "temp_c": this.temp_c,
      'text': this.condition,
      'code':this.code
    };
  }
}
