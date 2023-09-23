// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';
import 'dart:io';

import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';

/// Represents an event sent by the navigation service
class RouteEvent {
  /// Constructor
  RouteEvent({
    this.eventType,
    this.data,
  });

  /// Creates [RouteEvent] object from json
  RouteEvent.fromJson(Map<String, dynamic> json) {
    try {
      eventType = MapBoxEvent.values
          .firstWhere((e) => e.toString().split('.').last == json['eventType']);
    } catch (e) {
      // TODO handle the error
    }

    final dataJson = json['data'];
    if (eventType == MapBoxEvent.progress_change) {
      data = RouteProgressEvent.fromJson(dataJson as Map<String, dynamic>);
    } else if (eventType == MapBoxEvent.navigation_finished &&
        (dataJson as String).isNotEmpty) {
      data =
          MapBoxFeedback.fromJson(jsonDecode(dataJson) as Map<String, dynamic>);
    } else if (eventType == MapBoxEvent.on_map_tap) {
      final json =
          Platform.isAndroid ? dataJson : jsonDecode(dataJson as String);
      data = WayPoint.fromJson(json as Map<String, dynamic>);
    } else if (eventType == MapBoxEvent.on_arrival) {
      final json =
          Platform.isAndroid ? dataJson : jsonDecode(dataJson as String);
      late List<double> location;

      if (Platform.isAndroid) {
        location = (jsonDecode(json['location'] as String) as List)
            .map((e) => e as double)
            .toList();
      } else {
        location = (json['location'] as List).map((e) => e as double).toList();
      }

      data = WayPoint(
        name: json['name'] as String,
        latitude: location[1],
        longitude: location[0],
      );
    } else {
      data = jsonEncode(dataJson);
    }
  }

  /// Route event type
  MapBoxEvent? eventType;

  /// optional data related to route event
  dynamic data;
}
