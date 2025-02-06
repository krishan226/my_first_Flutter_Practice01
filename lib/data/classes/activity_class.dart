class Activity {
  final int? id;
  final String? secret;
  final int? emScore;
  final String? username;
  final String? timestamp;

  Activity({
    this.id,
    this.secret,
    this.emScore,
    this.username,
    this.timestamp,
  });

  factory Activity.fromJson(Map<String, dynamic> json) => Activity(
        id: json["id"],
        secret: json["secret"],
        emScore: json["emScore"],
        username: json["username"],
        timestamp: json["timestamp"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "secret": secret,
        "emScore": emScore,
        "username": username,
        "timestamp": timestamp,
      };
}
