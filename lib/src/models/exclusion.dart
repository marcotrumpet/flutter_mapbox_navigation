// ignore_for_file: public_member_api_docs

import 'package:freezed_annotation/freezed_annotation.dart';

enum Exclusion {
  @JsonValue('toll')
  toll,
  @JsonValue('motorway')
  motorway,
  @JsonValue('ferry')
  ferry,
  @JsonValue('unpaved')
  unpaved,
  @JsonValue('cash_only_tolls')
  cashOnlyTolls,
}
