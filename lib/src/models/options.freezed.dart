// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MapBoxOptions _$MapBoxOptionsFromJson(Map<String, dynamic> json) {
  return _MapBoxOptions.fromJson(json);
}

/// @nodoc
mixin _$MapBoxOptions {
  /// The initial Latitude of the Map View
  double? get initialLatitude => throw _privateConstructorUsedError;

  /// The initial Longitude of the Map View
  double? get initialLongitude => throw _privateConstructorUsedError;

  /// 2-letter ISO 639-1 code for language. This property affects the sentence
  /// contained within the RouteStep.instructions property, but it does not
  /// affect any road names contained in that property or other properties
  /// such as RouteStep.name. Defaults to 'en' if an unsupported language
  /// is specified. The languages in this link are supported:
  ///  https://docs.mapbox.com/android/navigation/overview/localization/ or
  /// https://docs.mapbox.com/ios/api/navigation/0.14.1/localization-and-internationalization.html
  String? get language => throw _privateConstructorUsedError;

  /// Zoom controls the scale of the map and consumes any value between 0
  /// and 22. At zoom level 0, the viewport shows continents and other world
  /// features. A middle value of 11 will show city level details, and at a
  ///  higher zoom level, the map will begin to show buildings and
  /// points of interest.
  double? get zoom => throw _privateConstructorUsedError;

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
  double? get bearing => throw _privateConstructorUsedError;

  /// Tilt is the camera's angle from the nadir (directly facing the Earth)
  /// and uses unit degrees. The camera's minimum (default) tilt is 0 degrees,
  /// and the maximum tilt is 60. Tilt levels use six decimal point of
  /// precision, which enables you to restrict/set/lock a map's bearing
  /// with extreme precision.
  ///
  /// The map camera tilt can also adjust by placing two fingertips on the map
  /// and moving both fingers up and down in parallel at the same time or
  double? get tilt => throw _privateConstructorUsedError;

  ///
  /// When true, alternate routes will be presented
  bool? get alternatives => throw _privateConstructorUsedError;

  ///
  /// The navigation mode desired. Defaults to drivingWithTraffic
  MapBoxNavigationMode? get mode => throw _privateConstructorUsedError;

  /// The unit of measure said in voice instructions
  VoiceUnits? get units => throw _privateConstructorUsedError;

  /// If the value of this property is true, a returned route may require an
  /// immediate U-turn at an intermediate waypoint. At an intermediate waypoint,
  ///  if the value of this property is false, each returned route may continue
  /// straight ahead or turn to either side but may not U-turn. This property
  /// has no effect if only two waypoints are specified.
  /// same as 'not continueStraight' on Android
  bool? get allowsUTurnAtWayPoints => throw _privateConstructorUsedError;
  bool? get enableRefresh =>
      throw _privateConstructorUsedError; // if true voice instruction is enabled
  bool? get voiceInstructionsEnabled =>
      throw _privateConstructorUsedError; //if true, banner instruction is shown and returned
  bool? get bannerInstructionsEnabled => throw _privateConstructorUsedError;

  /// if true will simulate the route as if you were driving.
  /// Always true on iOS Simulator
  bool? get simulateRoute => throw _privateConstructorUsedError;

  /// The Url of the style the Navigation MapView should use during the day
  String? get mapStyleUrlDay => throw _privateConstructorUsedError;

  /// The Url of the style the Navigation MapView should use at night
  String? get mapStyleUrlNight => throw _privateConstructorUsedError;

  /// if true, will reorder the routes to optimize navigation for time and
  /// shortest distance using the Travelling Salesman Algorithm.
  /// Always false for now
  bool? get isOptimized => throw _privateConstructorUsedError;

  /// Should animate the building of the Route. Default is True
  bool? get animateBuildRoute => throw _privateConstructorUsedError;

  /// When the user long presses on a point on the map, set that
  ///  as the destination
  bool? get longPressDestinationEnabled => throw _privateConstructorUsedError;

  /// In iOS this will show/hide the feedback button. Default to True.
  bool? get showReportFeedbackButton => throw _privateConstructorUsedError;

  /// In iOS this will show/hide the end of route page when navigation is done. Default to True.
  bool? get showEndOfRouteFeedback => throw _privateConstructorUsedError;

  /// Gives you the ability to receive back a waypoint corresponding
  /// to where you tap on the map.
  bool? get enableOnMapTapCallback => throw _privateConstructorUsedError;

  /// Android only.
  /// Show/hide Info Panel BottomSheet.
  bool? get showInfoPanel => throw _privateConstructorUsedError;

  /// Android only.
  /// Show/hide speed limit
  bool? get showSpeedLimit => throw _privateConstructorUsedError;

  /// Android only.
  /// Show/hide recenter button
  bool? get showRecenterActionButton => throw _privateConstructorUsedError;

  /// Android only.
  /// Show/hide Road name
  bool? get showRoadName => throw _privateConstructorUsedError;

  /// Android only.
  /// Show/hide compass button
  bool? get showCompassActionButton => throw _privateConstructorUsedError;

  /// Android only.
  /// Show/hide action button
  bool? get showActionButtons => throw _privateConstructorUsedError;

  /// This lets you customize the waypoint appearance by using an image from
  /// your Flutter project directly.
  /// Pass it the path from flutter project. E.g. `assets/icon/custom_icon.png`.
  /// Remember to add it to your assets in pubspec.yaml file as any other asset
  /// and pass here the whole path.
  ///
  /// If null, default circle pin will be shown instead.
  String? get customPinPath => throw _privateConstructorUsedError;

  /// toll
  /// motorway
  /// ferry
  /// unpaved
  /// cash_only_tolls
  List<Exclusion>? get exclude => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MapBoxOptionsCopyWith<MapBoxOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapBoxOptionsCopyWith<$Res> {
  factory $MapBoxOptionsCopyWith(
          MapBoxOptions value, $Res Function(MapBoxOptions) then) =
      _$MapBoxOptionsCopyWithImpl<$Res, MapBoxOptions>;
  @useResult
  $Res call(
      {double? initialLatitude,
      double? initialLongitude,
      String? language,
      double? zoom,
      double? bearing,
      double? tilt,
      bool? alternatives,
      MapBoxNavigationMode? mode,
      VoiceUnits? units,
      bool? allowsUTurnAtWayPoints,
      bool? enableRefresh,
      bool? voiceInstructionsEnabled,
      bool? bannerInstructionsEnabled,
      bool? simulateRoute,
      String? mapStyleUrlDay,
      String? mapStyleUrlNight,
      bool? isOptimized,
      bool? animateBuildRoute,
      bool? longPressDestinationEnabled,
      bool? showReportFeedbackButton,
      bool? showEndOfRouteFeedback,
      bool? enableOnMapTapCallback,
      bool? showInfoPanel,
      bool? showSpeedLimit,
      bool? showRecenterActionButton,
      bool? showRoadName,
      bool? showCompassActionButton,
      bool? showActionButtons,
      String? customPinPath,
      List<Exclusion>? exclude});
}

/// @nodoc
class _$MapBoxOptionsCopyWithImpl<$Res, $Val extends MapBoxOptions>
    implements $MapBoxOptionsCopyWith<$Res> {
  _$MapBoxOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialLatitude = freezed,
    Object? initialLongitude = freezed,
    Object? language = freezed,
    Object? zoom = freezed,
    Object? bearing = freezed,
    Object? tilt = freezed,
    Object? alternatives = freezed,
    Object? mode = freezed,
    Object? units = freezed,
    Object? allowsUTurnAtWayPoints = freezed,
    Object? enableRefresh = freezed,
    Object? voiceInstructionsEnabled = freezed,
    Object? bannerInstructionsEnabled = freezed,
    Object? simulateRoute = freezed,
    Object? mapStyleUrlDay = freezed,
    Object? mapStyleUrlNight = freezed,
    Object? isOptimized = freezed,
    Object? animateBuildRoute = freezed,
    Object? longPressDestinationEnabled = freezed,
    Object? showReportFeedbackButton = freezed,
    Object? showEndOfRouteFeedback = freezed,
    Object? enableOnMapTapCallback = freezed,
    Object? showInfoPanel = freezed,
    Object? showSpeedLimit = freezed,
    Object? showRecenterActionButton = freezed,
    Object? showRoadName = freezed,
    Object? showCompassActionButton = freezed,
    Object? showActionButtons = freezed,
    Object? customPinPath = freezed,
    Object? exclude = freezed,
  }) {
    return _then(_value.copyWith(
      initialLatitude: freezed == initialLatitude
          ? _value.initialLatitude
          : initialLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      initialLongitude: freezed == initialLongitude
          ? _value.initialLongitude
          : initialLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      zoom: freezed == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double?,
      bearing: freezed == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
      tilt: freezed == tilt
          ? _value.tilt
          : tilt // ignore: cast_nullable_to_non_nullable
              as double?,
      alternatives: freezed == alternatives
          ? _value.alternatives
          : alternatives // ignore: cast_nullable_to_non_nullable
              as bool?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as MapBoxNavigationMode?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as VoiceUnits?,
      allowsUTurnAtWayPoints: freezed == allowsUTurnAtWayPoints
          ? _value.allowsUTurnAtWayPoints
          : allowsUTurnAtWayPoints // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableRefresh: freezed == enableRefresh
          ? _value.enableRefresh
          : enableRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
      voiceInstructionsEnabled: freezed == voiceInstructionsEnabled
          ? _value.voiceInstructionsEnabled
          : voiceInstructionsEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      bannerInstructionsEnabled: freezed == bannerInstructionsEnabled
          ? _value.bannerInstructionsEnabled
          : bannerInstructionsEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      simulateRoute: freezed == simulateRoute
          ? _value.simulateRoute
          : simulateRoute // ignore: cast_nullable_to_non_nullable
              as bool?,
      mapStyleUrlDay: freezed == mapStyleUrlDay
          ? _value.mapStyleUrlDay
          : mapStyleUrlDay // ignore: cast_nullable_to_non_nullable
              as String?,
      mapStyleUrlNight: freezed == mapStyleUrlNight
          ? _value.mapStyleUrlNight
          : mapStyleUrlNight // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptimized: freezed == isOptimized
          ? _value.isOptimized
          : isOptimized // ignore: cast_nullable_to_non_nullable
              as bool?,
      animateBuildRoute: freezed == animateBuildRoute
          ? _value.animateBuildRoute
          : animateBuildRoute // ignore: cast_nullable_to_non_nullable
              as bool?,
      longPressDestinationEnabled: freezed == longPressDestinationEnabled
          ? _value.longPressDestinationEnabled
          : longPressDestinationEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      showReportFeedbackButton: freezed == showReportFeedbackButton
          ? _value.showReportFeedbackButton
          : showReportFeedbackButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      showEndOfRouteFeedback: freezed == showEndOfRouteFeedback
          ? _value.showEndOfRouteFeedback
          : showEndOfRouteFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableOnMapTapCallback: freezed == enableOnMapTapCallback
          ? _value.enableOnMapTapCallback
          : enableOnMapTapCallback // ignore: cast_nullable_to_non_nullable
              as bool?,
      showInfoPanel: freezed == showInfoPanel
          ? _value.showInfoPanel
          : showInfoPanel // ignore: cast_nullable_to_non_nullable
              as bool?,
      showSpeedLimit: freezed == showSpeedLimit
          ? _value.showSpeedLimit
          : showSpeedLimit // ignore: cast_nullable_to_non_nullable
              as bool?,
      showRecenterActionButton: freezed == showRecenterActionButton
          ? _value.showRecenterActionButton
          : showRecenterActionButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      showRoadName: freezed == showRoadName
          ? _value.showRoadName
          : showRoadName // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCompassActionButton: freezed == showCompassActionButton
          ? _value.showCompassActionButton
          : showCompassActionButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      showActionButtons: freezed == showActionButtons
          ? _value.showActionButtons
          : showActionButtons // ignore: cast_nullable_to_non_nullable
              as bool?,
      customPinPath: freezed == customPinPath
          ? _value.customPinPath
          : customPinPath // ignore: cast_nullable_to_non_nullable
              as String?,
      exclude: freezed == exclude
          ? _value.exclude
          : exclude // ignore: cast_nullable_to_non_nullable
              as List<Exclusion>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MapBoxOptionsCopyWith<$Res>
    implements $MapBoxOptionsCopyWith<$Res> {
  factory _$$_MapBoxOptionsCopyWith(
          _$_MapBoxOptions value, $Res Function(_$_MapBoxOptions) then) =
      __$$_MapBoxOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? initialLatitude,
      double? initialLongitude,
      String? language,
      double? zoom,
      double? bearing,
      double? tilt,
      bool? alternatives,
      MapBoxNavigationMode? mode,
      VoiceUnits? units,
      bool? allowsUTurnAtWayPoints,
      bool? enableRefresh,
      bool? voiceInstructionsEnabled,
      bool? bannerInstructionsEnabled,
      bool? simulateRoute,
      String? mapStyleUrlDay,
      String? mapStyleUrlNight,
      bool? isOptimized,
      bool? animateBuildRoute,
      bool? longPressDestinationEnabled,
      bool? showReportFeedbackButton,
      bool? showEndOfRouteFeedback,
      bool? enableOnMapTapCallback,
      bool? showInfoPanel,
      bool? showSpeedLimit,
      bool? showRecenterActionButton,
      bool? showRoadName,
      bool? showCompassActionButton,
      bool? showActionButtons,
      String? customPinPath,
      List<Exclusion>? exclude});
}

/// @nodoc
class __$$_MapBoxOptionsCopyWithImpl<$Res>
    extends _$MapBoxOptionsCopyWithImpl<$Res, _$_MapBoxOptions>
    implements _$$_MapBoxOptionsCopyWith<$Res> {
  __$$_MapBoxOptionsCopyWithImpl(
      _$_MapBoxOptions _value, $Res Function(_$_MapBoxOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? initialLatitude = freezed,
    Object? initialLongitude = freezed,
    Object? language = freezed,
    Object? zoom = freezed,
    Object? bearing = freezed,
    Object? tilt = freezed,
    Object? alternatives = freezed,
    Object? mode = freezed,
    Object? units = freezed,
    Object? allowsUTurnAtWayPoints = freezed,
    Object? enableRefresh = freezed,
    Object? voiceInstructionsEnabled = freezed,
    Object? bannerInstructionsEnabled = freezed,
    Object? simulateRoute = freezed,
    Object? mapStyleUrlDay = freezed,
    Object? mapStyleUrlNight = freezed,
    Object? isOptimized = freezed,
    Object? animateBuildRoute = freezed,
    Object? longPressDestinationEnabled = freezed,
    Object? showReportFeedbackButton = freezed,
    Object? showEndOfRouteFeedback = freezed,
    Object? enableOnMapTapCallback = freezed,
    Object? showInfoPanel = freezed,
    Object? showSpeedLimit = freezed,
    Object? showRecenterActionButton = freezed,
    Object? showRoadName = freezed,
    Object? showCompassActionButton = freezed,
    Object? showActionButtons = freezed,
    Object? customPinPath = freezed,
    Object? exclude = freezed,
  }) {
    return _then(_$_MapBoxOptions(
      initialLatitude: freezed == initialLatitude
          ? _value.initialLatitude
          : initialLatitude // ignore: cast_nullable_to_non_nullable
              as double?,
      initialLongitude: freezed == initialLongitude
          ? _value.initialLongitude
          : initialLongitude // ignore: cast_nullable_to_non_nullable
              as double?,
      language: freezed == language
          ? _value.language
          : language // ignore: cast_nullable_to_non_nullable
              as String?,
      zoom: freezed == zoom
          ? _value.zoom
          : zoom // ignore: cast_nullable_to_non_nullable
              as double?,
      bearing: freezed == bearing
          ? _value.bearing
          : bearing // ignore: cast_nullable_to_non_nullable
              as double?,
      tilt: freezed == tilt
          ? _value.tilt
          : tilt // ignore: cast_nullable_to_non_nullable
              as double?,
      alternatives: freezed == alternatives
          ? _value.alternatives
          : alternatives // ignore: cast_nullable_to_non_nullable
              as bool?,
      mode: freezed == mode
          ? _value.mode
          : mode // ignore: cast_nullable_to_non_nullable
              as MapBoxNavigationMode?,
      units: freezed == units
          ? _value.units
          : units // ignore: cast_nullable_to_non_nullable
              as VoiceUnits?,
      allowsUTurnAtWayPoints: freezed == allowsUTurnAtWayPoints
          ? _value.allowsUTurnAtWayPoints
          : allowsUTurnAtWayPoints // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableRefresh: freezed == enableRefresh
          ? _value.enableRefresh
          : enableRefresh // ignore: cast_nullable_to_non_nullable
              as bool?,
      voiceInstructionsEnabled: freezed == voiceInstructionsEnabled
          ? _value.voiceInstructionsEnabled
          : voiceInstructionsEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      bannerInstructionsEnabled: freezed == bannerInstructionsEnabled
          ? _value.bannerInstructionsEnabled
          : bannerInstructionsEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      simulateRoute: freezed == simulateRoute
          ? _value.simulateRoute
          : simulateRoute // ignore: cast_nullable_to_non_nullable
              as bool?,
      mapStyleUrlDay: freezed == mapStyleUrlDay
          ? _value.mapStyleUrlDay
          : mapStyleUrlDay // ignore: cast_nullable_to_non_nullable
              as String?,
      mapStyleUrlNight: freezed == mapStyleUrlNight
          ? _value.mapStyleUrlNight
          : mapStyleUrlNight // ignore: cast_nullable_to_non_nullable
              as String?,
      isOptimized: freezed == isOptimized
          ? _value.isOptimized
          : isOptimized // ignore: cast_nullable_to_non_nullable
              as bool?,
      animateBuildRoute: freezed == animateBuildRoute
          ? _value.animateBuildRoute
          : animateBuildRoute // ignore: cast_nullable_to_non_nullable
              as bool?,
      longPressDestinationEnabled: freezed == longPressDestinationEnabled
          ? _value.longPressDestinationEnabled
          : longPressDestinationEnabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      showReportFeedbackButton: freezed == showReportFeedbackButton
          ? _value.showReportFeedbackButton
          : showReportFeedbackButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      showEndOfRouteFeedback: freezed == showEndOfRouteFeedback
          ? _value.showEndOfRouteFeedback
          : showEndOfRouteFeedback // ignore: cast_nullable_to_non_nullable
              as bool?,
      enableOnMapTapCallback: freezed == enableOnMapTapCallback
          ? _value.enableOnMapTapCallback
          : enableOnMapTapCallback // ignore: cast_nullable_to_non_nullable
              as bool?,
      showInfoPanel: freezed == showInfoPanel
          ? _value.showInfoPanel
          : showInfoPanel // ignore: cast_nullable_to_non_nullable
              as bool?,
      showSpeedLimit: freezed == showSpeedLimit
          ? _value.showSpeedLimit
          : showSpeedLimit // ignore: cast_nullable_to_non_nullable
              as bool?,
      showRecenterActionButton: freezed == showRecenterActionButton
          ? _value.showRecenterActionButton
          : showRecenterActionButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      showRoadName: freezed == showRoadName
          ? _value.showRoadName
          : showRoadName // ignore: cast_nullable_to_non_nullable
              as bool?,
      showCompassActionButton: freezed == showCompassActionButton
          ? _value.showCompassActionButton
          : showCompassActionButton // ignore: cast_nullable_to_non_nullable
              as bool?,
      showActionButtons: freezed == showActionButtons
          ? _value.showActionButtons
          : showActionButtons // ignore: cast_nullable_to_non_nullable
              as bool?,
      customPinPath: freezed == customPinPath
          ? _value.customPinPath
          : customPinPath // ignore: cast_nullable_to_non_nullable
              as String?,
      exclude: freezed == exclude
          ? _value._exclude
          : exclude // ignore: cast_nullable_to_non_nullable
              as List<Exclusion>?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_MapBoxOptions implements _MapBoxOptions {
  const _$_MapBoxOptions(
      {this.initialLatitude,
      this.initialLongitude,
      this.language,
      this.zoom,
      this.bearing,
      this.tilt,
      this.alternatives,
      this.mode,
      this.units,
      this.allowsUTurnAtWayPoints,
      this.enableRefresh,
      this.voiceInstructionsEnabled,
      this.bannerInstructionsEnabled,
      this.simulateRoute,
      this.mapStyleUrlDay,
      this.mapStyleUrlNight,
      this.isOptimized,
      this.animateBuildRoute,
      this.longPressDestinationEnabled,
      this.showReportFeedbackButton,
      this.showEndOfRouteFeedback,
      this.enableOnMapTapCallback,
      this.showInfoPanel,
      this.showSpeedLimit,
      this.showRecenterActionButton,
      this.showRoadName,
      this.showCompassActionButton,
      this.showActionButtons,
      this.customPinPath,
      final List<Exclusion>? exclude})
      : _exclude = exclude;

  factory _$_MapBoxOptions.fromJson(Map<String, dynamic> json) =>
      _$$_MapBoxOptionsFromJson(json);

  /// The initial Latitude of the Map View
  @override
  final double? initialLatitude;

  /// The initial Longitude of the Map View
  @override
  final double? initialLongitude;

  /// 2-letter ISO 639-1 code for language. This property affects the sentence
  /// contained within the RouteStep.instructions property, but it does not
  /// affect any road names contained in that property or other properties
  /// such as RouteStep.name. Defaults to 'en' if an unsupported language
  /// is specified. The languages in this link are supported:
  ///  https://docs.mapbox.com/android/navigation/overview/localization/ or
  /// https://docs.mapbox.com/ios/api/navigation/0.14.1/localization-and-internationalization.html
  @override
  final String? language;

  /// Zoom controls the scale of the map and consumes any value between 0
  /// and 22. At zoom level 0, the viewport shows continents and other world
  /// features. A middle value of 11 will show city level details, and at a
  ///  higher zoom level, the map will begin to show buildings and
  /// points of interest.
  @override
  final double? zoom;

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
  @override
  final double? bearing;

  /// Tilt is the camera's angle from the nadir (directly facing the Earth)
  /// and uses unit degrees. The camera's minimum (default) tilt is 0 degrees,
  /// and the maximum tilt is 60. Tilt levels use six decimal point of
  /// precision, which enables you to restrict/set/lock a map's bearing
  /// with extreme precision.
  ///
  /// The map camera tilt can also adjust by placing two fingertips on the map
  /// and moving both fingers up and down in parallel at the same time or
  @override
  final double? tilt;

  ///
  /// When true, alternate routes will be presented
  @override
  final bool? alternatives;

  ///
  /// The navigation mode desired. Defaults to drivingWithTraffic
  @override
  final MapBoxNavigationMode? mode;

  /// The unit of measure said in voice instructions
  @override
  final VoiceUnits? units;

  /// If the value of this property is true, a returned route may require an
  /// immediate U-turn at an intermediate waypoint. At an intermediate waypoint,
  ///  if the value of this property is false, each returned route may continue
  /// straight ahead or turn to either side but may not U-turn. This property
  /// has no effect if only two waypoints are specified.
  /// same as 'not continueStraight' on Android
  @override
  final bool? allowsUTurnAtWayPoints;
  @override
  final bool? enableRefresh;
// if true voice instruction is enabled
  @override
  final bool? voiceInstructionsEnabled;
//if true, banner instruction is shown and returned
  @override
  final bool? bannerInstructionsEnabled;

  /// if true will simulate the route as if you were driving.
  /// Always true on iOS Simulator
  @override
  final bool? simulateRoute;

  /// The Url of the style the Navigation MapView should use during the day
  @override
  final String? mapStyleUrlDay;

  /// The Url of the style the Navigation MapView should use at night
  @override
  final String? mapStyleUrlNight;

  /// if true, will reorder the routes to optimize navigation for time and
  /// shortest distance using the Travelling Salesman Algorithm.
  /// Always false for now
  @override
  final bool? isOptimized;

  /// Should animate the building of the Route. Default is True
  @override
  final bool? animateBuildRoute;

  /// When the user long presses on a point on the map, set that
  ///  as the destination
  @override
  final bool? longPressDestinationEnabled;

  /// In iOS this will show/hide the feedback button. Default to True.
  @override
  final bool? showReportFeedbackButton;

  /// In iOS this will show/hide the end of route page when navigation is done. Default to True.
  @override
  final bool? showEndOfRouteFeedback;

  /// Gives you the ability to receive back a waypoint corresponding
  /// to where you tap on the map.
  @override
  final bool? enableOnMapTapCallback;

  /// Android only.
  /// Show/hide Info Panel BottomSheet.
  @override
  final bool? showInfoPanel;

  /// Android only.
  /// Show/hide speed limit
  @override
  final bool? showSpeedLimit;

  /// Android only.
  /// Show/hide recenter button
  @override
  final bool? showRecenterActionButton;

  /// Android only.
  /// Show/hide Road name
  @override
  final bool? showRoadName;

  /// Android only.
  /// Show/hide compass button
  @override
  final bool? showCompassActionButton;

  /// Android only.
  /// Show/hide action button
  @override
  final bool? showActionButtons;

  /// This lets you customize the waypoint appearance by using an image from
  /// your Flutter project directly.
  /// Pass it the path from flutter project. E.g. `assets/icon/custom_icon.png`.
  /// Remember to add it to your assets in pubspec.yaml file as any other asset
  /// and pass here the whole path.
  ///
  /// If null, default circle pin will be shown instead.
  @override
  final String? customPinPath;

  /// toll
  /// motorway
  /// ferry
  /// unpaved
  /// cash_only_tolls
  final List<Exclusion>? _exclude;

  /// toll
  /// motorway
  /// ferry
  /// unpaved
  /// cash_only_tolls
  @override
  List<Exclusion>? get exclude {
    final value = _exclude;
    if (value == null) return null;
    if (_exclude is EqualUnmodifiableListView) return _exclude;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MapBoxOptions(initialLatitude: $initialLatitude, initialLongitude: $initialLongitude, language: $language, zoom: $zoom, bearing: $bearing, tilt: $tilt, alternatives: $alternatives, mode: $mode, units: $units, allowsUTurnAtWayPoints: $allowsUTurnAtWayPoints, enableRefresh: $enableRefresh, voiceInstructionsEnabled: $voiceInstructionsEnabled, bannerInstructionsEnabled: $bannerInstructionsEnabled, simulateRoute: $simulateRoute, mapStyleUrlDay: $mapStyleUrlDay, mapStyleUrlNight: $mapStyleUrlNight, isOptimized: $isOptimized, animateBuildRoute: $animateBuildRoute, longPressDestinationEnabled: $longPressDestinationEnabled, showReportFeedbackButton: $showReportFeedbackButton, showEndOfRouteFeedback: $showEndOfRouteFeedback, enableOnMapTapCallback: $enableOnMapTapCallback, showInfoPanel: $showInfoPanel, showSpeedLimit: $showSpeedLimit, showRecenterActionButton: $showRecenterActionButton, showRoadName: $showRoadName, showCompassActionButton: $showCompassActionButton, showActionButtons: $showActionButtons, customPinPath: $customPinPath, exclude: $exclude)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapBoxOptions &&
            (identical(other.initialLatitude, initialLatitude) ||
                other.initialLatitude == initialLatitude) &&
            (identical(other.initialLongitude, initialLongitude) ||
                other.initialLongitude == initialLongitude) &&
            (identical(other.language, language) ||
                other.language == language) &&
            (identical(other.zoom, zoom) || other.zoom == zoom) &&
            (identical(other.bearing, bearing) || other.bearing == bearing) &&
            (identical(other.tilt, tilt) || other.tilt == tilt) &&
            (identical(other.alternatives, alternatives) ||
                other.alternatives == alternatives) &&
            (identical(other.mode, mode) || other.mode == mode) &&
            (identical(other.units, units) || other.units == units) &&
            (identical(other.allowsUTurnAtWayPoints, allowsUTurnAtWayPoints) ||
                other.allowsUTurnAtWayPoints == allowsUTurnAtWayPoints) &&
            (identical(other.enableRefresh, enableRefresh) ||
                other.enableRefresh == enableRefresh) &&
            (identical(other.voiceInstructionsEnabled, voiceInstructionsEnabled) ||
                other.voiceInstructionsEnabled == voiceInstructionsEnabled) &&
            (identical(other.bannerInstructionsEnabled, bannerInstructionsEnabled) ||
                other.bannerInstructionsEnabled == bannerInstructionsEnabled) &&
            (identical(other.simulateRoute, simulateRoute) ||
                other.simulateRoute == simulateRoute) &&
            (identical(other.mapStyleUrlDay, mapStyleUrlDay) ||
                other.mapStyleUrlDay == mapStyleUrlDay) &&
            (identical(other.mapStyleUrlNight, mapStyleUrlNight) ||
                other.mapStyleUrlNight == mapStyleUrlNight) &&
            (identical(other.isOptimized, isOptimized) ||
                other.isOptimized == isOptimized) &&
            (identical(other.animateBuildRoute, animateBuildRoute) ||
                other.animateBuildRoute == animateBuildRoute) &&
            (identical(other.longPressDestinationEnabled, longPressDestinationEnabled) ||
                other.longPressDestinationEnabled ==
                    longPressDestinationEnabled) &&
            (identical(other.showReportFeedbackButton, showReportFeedbackButton) ||
                other.showReportFeedbackButton == showReportFeedbackButton) &&
            (identical(other.showEndOfRouteFeedback, showEndOfRouteFeedback) ||
                other.showEndOfRouteFeedback == showEndOfRouteFeedback) &&
            (identical(other.enableOnMapTapCallback, enableOnMapTapCallback) ||
                other.enableOnMapTapCallback == enableOnMapTapCallback) &&
            (identical(other.showInfoPanel, showInfoPanel) ||
                other.showInfoPanel == showInfoPanel) &&
            (identical(other.showSpeedLimit, showSpeedLimit) ||
                other.showSpeedLimit == showSpeedLimit) &&
            (identical(
                    other.showRecenterActionButton, showRecenterActionButton) ||
                other.showRecenterActionButton == showRecenterActionButton) &&
            (identical(other.showRoadName, showRoadName) ||
                other.showRoadName == showRoadName) &&
            (identical(other.showCompassActionButton, showCompassActionButton) ||
                other.showCompassActionButton == showCompassActionButton) &&
            (identical(other.showActionButtons, showActionButtons) ||
                other.showActionButtons == showActionButtons) &&
            (identical(other.customPinPath, customPinPath) ||
                other.customPinPath == customPinPath) &&
            const DeepCollectionEquality().equals(other._exclude, _exclude));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        initialLatitude,
        initialLongitude,
        language,
        zoom,
        bearing,
        tilt,
        alternatives,
        mode,
        units,
        allowsUTurnAtWayPoints,
        enableRefresh,
        voiceInstructionsEnabled,
        bannerInstructionsEnabled,
        simulateRoute,
        mapStyleUrlDay,
        mapStyleUrlNight,
        isOptimized,
        animateBuildRoute,
        longPressDestinationEnabled,
        showReportFeedbackButton,
        showEndOfRouteFeedback,
        enableOnMapTapCallback,
        showInfoPanel,
        showSpeedLimit,
        showRecenterActionButton,
        showRoadName,
        showCompassActionButton,
        showActionButtons,
        customPinPath,
        const DeepCollectionEquality().hash(_exclude)
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MapBoxOptionsCopyWith<_$_MapBoxOptions> get copyWith =>
      __$$_MapBoxOptionsCopyWithImpl<_$_MapBoxOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MapBoxOptionsToJson(
      this,
    );
  }
}

abstract class _MapBoxOptions implements MapBoxOptions {
  const factory _MapBoxOptions(
      {final double? initialLatitude,
      final double? initialLongitude,
      final String? language,
      final double? zoom,
      final double? bearing,
      final double? tilt,
      final bool? alternatives,
      final MapBoxNavigationMode? mode,
      final VoiceUnits? units,
      final bool? allowsUTurnAtWayPoints,
      final bool? enableRefresh,
      final bool? voiceInstructionsEnabled,
      final bool? bannerInstructionsEnabled,
      final bool? simulateRoute,
      final String? mapStyleUrlDay,
      final String? mapStyleUrlNight,
      final bool? isOptimized,
      final bool? animateBuildRoute,
      final bool? longPressDestinationEnabled,
      final bool? showReportFeedbackButton,
      final bool? showEndOfRouteFeedback,
      final bool? enableOnMapTapCallback,
      final bool? showInfoPanel,
      final bool? showSpeedLimit,
      final bool? showRecenterActionButton,
      final bool? showRoadName,
      final bool? showCompassActionButton,
      final bool? showActionButtons,
      final String? customPinPath,
      final List<Exclusion>? exclude}) = _$_MapBoxOptions;

  factory _MapBoxOptions.fromJson(Map<String, dynamic> json) =
      _$_MapBoxOptions.fromJson;

  @override

  /// The initial Latitude of the Map View
  double? get initialLatitude;
  @override

  /// The initial Longitude of the Map View
  double? get initialLongitude;
  @override

  /// 2-letter ISO 639-1 code for language. This property affects the sentence
  /// contained within the RouteStep.instructions property, but it does not
  /// affect any road names contained in that property or other properties
  /// such as RouteStep.name. Defaults to 'en' if an unsupported language
  /// is specified. The languages in this link are supported:
  ///  https://docs.mapbox.com/android/navigation/overview/localization/ or
  /// https://docs.mapbox.com/ios/api/navigation/0.14.1/localization-and-internationalization.html
  String? get language;
  @override

  /// Zoom controls the scale of the map and consumes any value between 0
  /// and 22. At zoom level 0, the viewport shows continents and other world
  /// features. A middle value of 11 will show city level details, and at a
  ///  higher zoom level, the map will begin to show buildings and
  /// points of interest.
  double? get zoom;
  @override

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
  double? get bearing;
  @override

  /// Tilt is the camera's angle from the nadir (directly facing the Earth)
  /// and uses unit degrees. The camera's minimum (default) tilt is 0 degrees,
  /// and the maximum tilt is 60. Tilt levels use six decimal point of
  /// precision, which enables you to restrict/set/lock a map's bearing
  /// with extreme precision.
  ///
  /// The map camera tilt can also adjust by placing two fingertips on the map
  /// and moving both fingers up and down in parallel at the same time or
  double? get tilt;
  @override

  ///
  /// When true, alternate routes will be presented
  bool? get alternatives;
  @override

  ///
  /// The navigation mode desired. Defaults to drivingWithTraffic
  MapBoxNavigationMode? get mode;
  @override

  /// The unit of measure said in voice instructions
  VoiceUnits? get units;
  @override

  /// If the value of this property is true, a returned route may require an
  /// immediate U-turn at an intermediate waypoint. At an intermediate waypoint,
  ///  if the value of this property is false, each returned route may continue
  /// straight ahead or turn to either side but may not U-turn. This property
  /// has no effect if only two waypoints are specified.
  /// same as 'not continueStraight' on Android
  bool? get allowsUTurnAtWayPoints;
  @override
  bool? get enableRefresh;
  @override // if true voice instruction is enabled
  bool? get voiceInstructionsEnabled;
  @override //if true, banner instruction is shown and returned
  bool? get bannerInstructionsEnabled;
  @override

  /// if true will simulate the route as if you were driving.
  /// Always true on iOS Simulator
  bool? get simulateRoute;
  @override

  /// The Url of the style the Navigation MapView should use during the day
  String? get mapStyleUrlDay;
  @override

  /// The Url of the style the Navigation MapView should use at night
  String? get mapStyleUrlNight;
  @override

  /// if true, will reorder the routes to optimize navigation for time and
  /// shortest distance using the Travelling Salesman Algorithm.
  /// Always false for now
  bool? get isOptimized;
  @override

  /// Should animate the building of the Route. Default is True
  bool? get animateBuildRoute;
  @override

  /// When the user long presses on a point on the map, set that
  ///  as the destination
  bool? get longPressDestinationEnabled;
  @override

  /// In iOS this will show/hide the feedback button. Default to True.
  bool? get showReportFeedbackButton;
  @override

  /// In iOS this will show/hide the end of route page when navigation is done. Default to True.
  bool? get showEndOfRouteFeedback;
  @override

  /// Gives you the ability to receive back a waypoint corresponding
  /// to where you tap on the map.
  bool? get enableOnMapTapCallback;
  @override

  /// Android only.
  /// Show/hide Info Panel BottomSheet.
  bool? get showInfoPanel;
  @override

  /// Android only.
  /// Show/hide speed limit
  bool? get showSpeedLimit;
  @override

  /// Android only.
  /// Show/hide recenter button
  bool? get showRecenterActionButton;
  @override

  /// Android only.
  /// Show/hide Road name
  bool? get showRoadName;
  @override

  /// Android only.
  /// Show/hide compass button
  bool? get showCompassActionButton;
  @override

  /// Android only.
  /// Show/hide action button
  bool? get showActionButtons;
  @override

  /// This lets you customize the waypoint appearance by using an image from
  /// your Flutter project directly.
  /// Pass it the path from flutter project. E.g. `assets/icon/custom_icon.png`.
  /// Remember to add it to your assets in pubspec.yaml file as any other asset
  /// and pass here the whole path.
  ///
  /// If null, default circle pin will be shown instead.
  String? get customPinPath;
  @override

  /// toll
  /// motorway
  /// ferry
  /// unpaved
  /// cash_only_tolls
  List<Exclusion>? get exclude;
  @override
  @JsonKey(ignore: true)
  _$$_MapBoxOptionsCopyWith<_$_MapBoxOptions> get copyWith =>
      throw _privateConstructorUsedError;
}
