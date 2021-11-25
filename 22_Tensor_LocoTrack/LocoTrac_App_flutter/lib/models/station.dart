class Station {
  String id;
  String latitude;
  String longitude;
  String name;

  Station(this.id, this.latitude, this.longitude, this.name);

  factory Station.fromJson(dynamic json) {
    return Station(json['id'] as String, json['latitude'] as String,
        json['longitude'] as String, json['name'] as String);
  }

  @override
  String toString() {
    return '{ ${this.id}, ${this.latitude},, ${this.longitude}, ${this.name} }';
  }
}
