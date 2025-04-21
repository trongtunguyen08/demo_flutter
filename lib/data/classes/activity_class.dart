class Activity {
  final String activity;
  final double availability;
  final int participants;
  final double price;
  final String accessibility;
  final String duration;
  final bool kidFriendly;
  final String link;
  final String key;
  final String type;

  const Activity({
    required this.activity,
    required this.availability,
    required this.participants,
    required this.price,
    required this.accessibility,
    required this.duration,
    required this.key,
    required this.kidFriendly,
    required this.link,
    required this.type,
  });

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
    activity: json["activity"],
    availability: json["availability"]?.toDouble(),
    type: json["type"],
    participants: json["participants"],
    price: json["price"]?.toDouble(),
    accessibility: json["accessibility"],
    duration: json["duration"],
    kidFriendly: json["kidFriendly"],
    link: json["link"],
    key: json["key"],
  );
}
