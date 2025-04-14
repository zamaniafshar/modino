import 'dart:math';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:mockito/annotations.dart';
import 'package:modino/bloc/date_time_provider.dart';
import 'package:modino/bloc/human_mod_calculator.dart';
import 'package:shouldly/shouldly.dart';

@GenerateMocks([DateTimeProvider])
import 'human_mod_calculator_test.mocks.dart';

void main() {
  late MockDateTimeProvider mockDateTimeProvider;
  late HumanModCalculator calculator;
  final testBirthday = DateTime(2000, 1, 1);

  setUp(() {
    mockDateTimeProvider = MockDateTimeProvider();
    calculator = HumanModCalculator(
      birthday: testBirthday,
      dateTimeProvider: mockDateTimeProvider,
    );
  });

  group('HumanModCalculator', () {
    test('calculates all mods as high at 7 days', () {
      final currentDate = testBirthday.add(const Duration(days: 7));
      when(mockDateTimeProvider.now()).thenReturn(currentDate);

      final result = calculator.calculate();
      result.physicalMod.should.be(HumanMod.high);
      result.emotionalMod.should.be(HumanMod.high);
      result.intellectualMod.should.be(HumanMod.high);
      result.averageMod().should.be(HumanMod.high);
    });

    test('calculates all mods as low at 21 days', () {
      final currentDate = testBirthday.add(const Duration(days: 21));
      when(mockDateTimeProvider.now()).thenReturn(currentDate);

      final result = calculator.calculate();
      result.physicalMod.should.be(HumanMod.low);
      result.emotionalMod.should.be(HumanMod.low);
      result.intellectualMod.should.be(HumanMod.low);
      result.averageMod().should.be(HumanMod.low);
    });

    test('calculates critical days for all mods', () {
      final currentDate = testBirthday.add(const Duration(days: 14));
      when(mockDateTimeProvider.now()).thenReturn(currentDate);

      final result = calculator.calculate();
      result.physicalMod.should.be(HumanMod.low);
      result.emotionalMod.should.be(HumanMod.criticalDay);
      result.intellectualMod.should.be(HumanMod.high);
    });

    test('calculates mixed states correctly', () {
      final currentDate = testBirthday.add(const Duration(days: 10));
      when(mockDateTimeProvider.now()).thenReturn(currentDate);

      final result = calculator.calculate();
      result.physicalMod.should.be(HumanMod.high);
      result.emotionalMod.should.be(HumanMod.high);
      result.intellectualMod.should.be(HumanMod.high);
    });

    test('handles birthday correctly', () {
      final currentDate = testBirthday.add(const Duration(days: 29));
      when(mockDateTimeProvider.now()).thenReturn(currentDate);

      final result = calculator.calculate();
      result.birthday.should.be(testBirthday);
      result.emotionalMod.should.be(HumanMod.criticalDay);
      result.physicalMod.should.be(HumanMod.low);
      result.intellectualMod.should.be(HumanMod.high);
    });

    test('calculates mods at one full cycle', () {
      // One full cycle of physical mod (23 days)
      final currentDate = testBirthday.add(const Duration(days: 23));
      when(mockDateTimeProvider.now()).thenReturn(currentDate);

      final result = calculator.calculate();
      result.physicalMod.should.be(HumanMod.criticalDay);
      result.emotionalMod.should.be(HumanMod.low);
      result.intellectualMod.should.be(HumanMod.low);
    });

    test('calculates mods at quarter cycles', () {
      // Quarter cycle for all mods (5.75, 7, 8.25 days)
      final currentDate = testBirthday.add(const Duration(days: 7));
      when(mockDateTimeProvider.now()).thenReturn(currentDate);

      final result = calculator.calculate();
      result.emotionalMod.should.be(HumanMod.high);
      result.physicalMod.should.be(HumanMod.high);
      result.intellectualMod.should.be(HumanMod.high);
    });

    test('calculates mods at three quarter cycles', () {
      // Three quarter cycle for all mods (17.25, 21, 24.75 days)
      final currentDate = testBirthday.add(const Duration(days: 21));
      when(mockDateTimeProvider.now()).thenReturn(currentDate);

      final result = calculator.calculate();
      result.emotionalMod.should.be(HumanMod.low);
      result.physicalMod.should.be(HumanMod.low);
      result.intellectualMod.should.be(HumanMod.low);
    });
  });
}
