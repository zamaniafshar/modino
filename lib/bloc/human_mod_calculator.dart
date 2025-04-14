import 'dart:math';

import 'package:modino/bloc/date_time_provider.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'human_mod_calculator.freezed.dart';
part 'human_mod_calculator.g.dart';
// A utility class to calculate the emotional biorhythm (mood mod)
// based on a person's birthday.
// Calculates the emotional biorhythm
//
// Returns a double value between -1 and +1:
// - A positive value suggests a high (happy) phase.
// - A negative value suggests a low (depressed) phase.
// - Zero indicates a critical transition day.

@Freezed(
  toJson: true,
  genericArgumentFactories: true,
)
class HumanModResult with _$HumanModResult {
  const factory HumanModResult({
    required HumanMod emotionalMod,
    required HumanMod physicalMod,
    required HumanMod intellectualMod,
    required DateTime birthday,
  }) = _HumanModResult;

  const HumanModResult._();

  HumanMod averageMod() {
    final sum = emotionalMod.value + physicalMod.value + intellectualMod.value;
    final average = (sum / 3).round();

    return switch (average) {
      1 => HumanMod.high,
      0 => HumanMod.criticalDay,
      -1 => HumanMod.low,
      _ => throw Exception('Invalid average mod value'),
    };
  }

  factory HumanModResult.fromJson(Map<String, dynamic> json) =>
      _$HumanModResultFromJson(json);
}

class HumanModCalculator {
  HumanModCalculator({
    required this.birthday,
    required DateTimeProvider dateTimeProvider,
  }) : _dateTimeProvider = dateTimeProvider;

  final DateTime birthday;
  final DateTimeProvider _dateTimeProvider;

  HumanModResult calculate() {
    return HumanModResult(
      emotionalMod: _calculate(28),
      physicalMod: _calculate(23),
      intellectualMod: _calculate(33),
      birthday: birthday,
    );
  }

  HumanMod _calculate(int dayPeriod) {
    final now = _dateTimeProvider.now();
    final daysElapsed = now.difference(birthday).inDays;
    const epsilon = 0.001; // Small value to handle floating point comparison

    final value = sin(2 * pi * daysElapsed / dayPeriod);

    return switch (value) {
      var v when v.abs() < epsilon => HumanMod.criticalDay,
      var v when v > 0 => HumanMod.high,
      var v when v < 0 => HumanMod.low,
      _ => throw Exception('Invalid emotional value'),
    };
  }
}

enum HumanMod {
  high(1),
  criticalDay(0),
  low(-1);

  const HumanMod(this.value);

  final int value;
}
