// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MapBoxOptions _$$_MapBoxOptionsFromJson(Map<String, dynamic> json) =>
    _$_MapBoxOptions(
      initialLatitude: (json['initialLatitude'] as num?)?.toDouble(),
      initialLongitude: (json['initialLongitude'] as num?)?.toDouble(),
      language: json['language'] as String?,
      zoom: (json['zoom'] as num?)?.toDouble(),
      bearing: (json['bearing'] as num?)?.toDouble(),
      tilt: (json['tilt'] as num?)?.toDouble(),
      alternatives: json['alternatives'] as bool?,
      mode: $enumDecodeNullable(_$MapBoxNavigationModeEnumMap, json['mode']),
      units: $enumDecodeNullable(_$VoiceUnitsEnumMap, json['units']),
      allowsUTurnAtWayPoints: json['allowsUTurnAtWayPoints'] as bool?,
      enableRefresh: json['enableRefresh'] as bool?,
      voiceInstructionsEnabled: json['voiceInstructionsEnabled'] as bool?,
      bannerInstructionsEnabled: json['bannerInstructionsEnabled'] as bool?,
      simulateRoute: json['simulateRoute'] as bool?,
      mapStyleUrlDay: json['mapStyleUrlDay'] as String?,
      mapStyleUrlNight: json['mapStyleUrlNight'] as String?,
      isOptimized: json['isOptimized'] as bool?,
      animateBuildRoute: json['animateBuildRoute'] as bool?,
      longPressDestinationEnabled: json['longPressDestinationEnabled'] as bool?,
      showReportFeedbackButton: json['showReportFeedbackButton'] as bool?,
      showEndOfRouteFeedback: json['showEndOfRouteFeedback'] as bool?,
      enableOnMapTapCallback: json['enableOnMapTapCallback'] as bool?,
      showInfoPanel: json['showInfoPanel'] as bool?,
      showSpeedLimit: json['showSpeedLimit'] as bool?,
      showRecenterActionButton: json['showRecenterActionButton'] as bool?,
      showRoadName: json['showRoadName'] as bool?,
      showCompassActionButton: json['showCompassActionButton'] as bool?,
      showActionButtons: json['showActionButtons'] as bool?,
      customPinPath: json['customPinPath'] as String?,
      exclude: (json['exclude'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ExclusionEnumMap, e))
          .toList(),
      customPuckImage: json['customPuckImage'] as String?,
    );

Map<String, dynamic> _$$_MapBoxOptionsToJson(_$_MapBoxOptions instance) {
  final val = <String, dynamic>{
    'initialLatitude': instance.initialLatitude,
    'initialLongitude': instance.initialLongitude,
    'language': instance.language,
    'zoom': instance.zoom,
    'bearing': instance.bearing,
    'tilt': instance.tilt,
    'alternatives': instance.alternatives,
    'mode': _$MapBoxNavigationModeEnumMap[instance.mode],
    'units': _$VoiceUnitsEnumMap[instance.units],
    'allowsUTurnAtWayPoints': instance.allowsUTurnAtWayPoints,
    'enableRefresh': instance.enableRefresh,
    'voiceInstructionsEnabled': instance.voiceInstructionsEnabled,
    'bannerInstructionsEnabled': instance.bannerInstructionsEnabled,
    'simulateRoute': instance.simulateRoute,
    'mapStyleUrlDay': instance.mapStyleUrlDay,
    'mapStyleUrlNight': instance.mapStyleUrlNight,
    'isOptimized': instance.isOptimized,
    'animateBuildRoute': instance.animateBuildRoute,
    'longPressDestinationEnabled': instance.longPressDestinationEnabled,
    'showReportFeedbackButton': instance.showReportFeedbackButton,
    'showEndOfRouteFeedback': instance.showEndOfRouteFeedback,
    'enableOnMapTapCallback': instance.enableOnMapTapCallback,
    'showInfoPanel': instance.showInfoPanel,
    'showSpeedLimit': instance.showSpeedLimit,
    'showRecenterActionButton': instance.showRecenterActionButton,
    'showRoadName': instance.showRoadName,
    'showCompassActionButton': instance.showCompassActionButton,
    'showActionButtons': instance.showActionButtons,
    'customPinPath': instance.customPinPath,
    'exclude': instance.exclude?.map((e) => _$ExclusionEnumMap[e]!).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('customPuckImage', instance.customPuckImage);
  return val;
}

const _$MapBoxNavigationModeEnumMap = {
  MapBoxNavigationMode.walking: 'walking',
  MapBoxNavigationMode.cycling: 'cycling',
  MapBoxNavigationMode.driving: 'driving',
  MapBoxNavigationMode.drivingWithTraffic: 'drivingWithTraffic',
};

const _$VoiceUnitsEnumMap = {
  VoiceUnits.imperial: 'imperial',
  VoiceUnits.metric: 'metric',
};

const _$ExclusionEnumMap = {
  Exclusion.toll: 'toll',
  Exclusion.motorway: 'motorway',
  Exclusion.ferry: 'ferry',
  Exclusion.unpaved: 'unpaved',
  Exclusion.cashOnlyTolls: 'cash_only_tolls',
};
