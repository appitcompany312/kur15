class Condition {
  const Condition({
    required this.code,
    required this.icon,
    required this.text,
  });

  final String text;
  final String icon;
  final int code;

  factory Condition.fromWeatherApi(Map<String, dynamic> json) {
    return Condition(
      text: json['text'],
      icon: json['icon'],
      code: json['code'],
    );
  }
}
