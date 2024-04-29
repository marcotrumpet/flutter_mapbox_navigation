// ignore_for_file: public_member_api_docs, lines_longer_than_80_chars

import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

/// Configuration options for the MapBoxNavigation.
///
/// When used to change configuration, null values will be interpreted as
/// 'do not change this configuration option'.
///

part 'options.freezed.dart';
part 'options.g.dart';

@freezed
class MapBoxOptions with _$MapBoxOptions {
  @JsonSerializable(explicitToJson: true)
  const factory MapBoxOptions({
    /// The initial Latitude of the Map View
    double? initialLatitude,

    /// The initial Longitude of the Map View
    double? initialLongitude,

    /// 2-letter ISO 639-1 code for language. This property affects the sentence
    /// contained within the RouteStep.instructions property, but it does not
    /// affect any road names contained in that property or other properties
    /// such as RouteStep.name. Defaults to 'en' if an unsupported language
    /// is specified. The languages in this link are supported:
    ///  https://docs.mapbox.com/android/navigation/overview/localization/ or
    /// https://docs.mapbox.com/ios/api/navigation/0.14.1/localization-and-internationalization.html
    String? language,

    /// Zoom controls the scale of the map and consumes any value between 0
    /// and 22. At zoom level 0, the viewport shows continents and other world
    /// features. A middle value of 11 will show city level details, and at a
    ///  higher zoom level, the map will begin to show buildings and
    /// points of interest.
    double? zoom,

    /// Bearing is the direction that the camera is pointing in and
    /// measured in degrees clockwise from north.
    ///
    /// The camera's default bearing is 0 degrees (i.e. 'true north') causing the
    /// map compass to hide until the camera bearing becomes a non-zero value.
    /// The mapbox_uiCompass boolean XML attribute allows adjustment of
    /// the compass' visibility. Bearing levels use six decimal point precision,
    /// which enables you to restrict/set/lock a map's bearing with
    /// extreme precision. Besides programmatically adjusting the camera bearing,
    ///  the user can place two fingertips on the map and rotate their fingers.
    double? bearing,

    /// Tilt is the camera's angle from the nadir (directly facing the Earth)
    /// and uses unit degrees. The camera's minimum (default) tilt is 0 degrees,
    /// and the maximum tilt is 60. Tilt levels use six decimal point of
    /// precision, which enables you to restrict/set/lock a map's bearing
    /// with extreme precision.
    ///
    /// The map camera tilt can also adjust by placing two fingertips on the map
    /// and moving both fingers up and down in parallel at the same time or
    double? tilt,

    ///
    /// When true, alternate routes will be presented
    bool? alternatives,

    ///
    /// The navigation mode desired. Defaults to drivingWithTraffic
    MapBoxNavigationMode? mode,

    /// The unit of measure said in voice instructions
    VoiceUnits? units,

    /// If the value of this property is true, a returned route may require an
    /// immediate U-turn at an intermediate waypoint. At an intermediate waypoint,
    ///  if the value of this property is false, each returned route may continue
    /// straight ahead or turn to either side but may not U-turn. This property
    /// has no effect if only two waypoints are specified.
    /// same as 'not continueStraight' on Android
    bool? allowsUTurnAtWayPoints,
    bool? enableRefresh,
    // if true voice instruction is enabled
    bool? voiceInstructionsEnabled,
    //if true, banner instruction is shown and returned
    bool? bannerInstructionsEnabled,

    /// if true will simulate the route as if you were driving.
    /// Always true on iOS Simulator
    bool? simulateRoute,

    /// The Url of the style the Navigation MapView should use during the day
    String? mapStyleUrlDay,

    /// The Url of the style the Navigation MapView should use at night
    String? mapStyleUrlNight,

    /// if true, will reorder the routes to optimize navigation for time and
    /// shortest distance using the Travelling Salesman Algorithm.
    /// Always false for now
    bool? isOptimized,

    /// Should animate the building of the Route. Default is True
    bool? animateBuildRoute,

    /// When the user long presses on a point on the map, set that
    ///  as the destination
    bool? longPressDestinationEnabled,

    /// In iOS this will show/hide the feedback button. Default to True.
    bool? showReportFeedbackButton,

    /// In iOS this will show/hide the end of route page when navigation is done. Default to True.
    bool? showEndOfRouteFeedback,

    /// Gives you the ability to receive back a waypoint corresponding
    /// to where you tap on the map.
    bool? enableOnMapTapCallback,

    /// Android only.
    /// Show/hide Info Panel BottomSheet.
    bool? showInfoPanel,

    /// Android only.
    /// Show/hide speed limit
    bool? showSpeedLimit,

    /// Android only.
    /// Show/hide recenter button
    bool? showRecenterActionButton,

    /// Android only.
    /// Show/hide Road name
    bool? showRoadName,

    /// Android only.
    /// Show/hide compass button
    bool? showCompassActionButton,

    /// Android only.
    /// Show/hide action button
    bool? showActionButtons,

    /// This lets you customize the waypoint appearance by using an image from
    /// your Flutter project directly.
    /// Pass it the path from flutter project. E.g. `assets/icon/custom_icon.png`.
    /// Remember to add it to your assets in pubspec.yaml file as any other asset
    /// and pass here the whole path.
    ///
    /// If null, default circle pin will be shown instead.
    String? customPinPath,

    /// toll
    /// motorway
    /// ferry
    /// unpaved
    /// cash_only_tolls
    List<Exclusion>? exclude,

    /// Custom image from Flutter assets to be used as puck location image
    @JsonKey(includeIfNull: false) String? customPuckImage,

    /// enable or disable camera button
    bool? enableCameraButton,
  }) = _MapBoxOptions;

  factory MapBoxOptions.fromJson(Map<String, dynamic> json) =>
      _$MapBoxOptionsFromJson(json);
}
