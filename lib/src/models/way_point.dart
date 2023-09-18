// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:flutter/foundation.dart';

///A `WayPoint` object indicates a location along a route.
///It may be the route’s origin or destination, or it may be another location
///that the route visits. A waypoint object indicates the location’s geographic
///location along with other optional information, such as a name or
///the user’s direction approaching the waypoint.
@immutable
class WayPoint {
  ///Constructor
  const WayPoint({
    required this.name,
    required this.latitude,
    required this.longitude,
    this.isSilent = false,
  });

  /// create [WayPoint] from a json
  factory WayPoint.fromJson(Map<String, dynamic> json) {
    return WayPoint(
      name: json['name'] as String?,
      latitude: (json['latitude'] is String)
          ? double.tryParse(json['latitude'] as String)
          : json['latitude'] as double?,
      longitude: (json['longitude'] is String)
          ? double.tryParse(json['longitude'] as String)
          : json['longitude'] as double?,
      isSilent: (json['isSilent'] == null) ? false : json['isSilent'] as bool,
    );
  }

  /// copyWith method
  WayPoint copyWith({
    String? name,
    double? latitude,
    double? longitude,
    bool? isSilent,
  }) {
    return WayPoint(
      name: name ?? this.name,
      latitude: latitude ?? this.latitude,
      longitude: longitude ?? this.longitude,
      isSilent: isSilent ?? this.isSilent,
    );
  }

  /// Create json from waypoint
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'latitude': latitude,
      'longitude': longitude,
      'isSilent': isSilent,
    };
  }

  /// Waypoint [name]
  final String? name;

  /// Waypoint latitude
  final double? latitude;

  /// Waypoint longitude
  final double? longitude;

  /// Waypoint property isSilent
  final bool? isSilent;

  @override
  String toString() {
    return 'WayPoint{latitude: $latitude, longitude: $longitude}';
  }

  @override
  int get hashCode => Object.hash(name, latitude, longitude);

  @override
  bool operator ==(Object other) =>
      other is WayPoint &&
      name == other.name &&
      latitude == other.latitude &&
      longitude == other.longitude;
}
