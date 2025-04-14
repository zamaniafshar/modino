import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:modino/bloc/date_time_provider.dart';
import 'package:modino/bloc/human_mod_calculator.dart';

part 'human_mod_cubit.freezed.dart';
part 'human_mod_cubit.g.dart';

@Freezed(
  toJson: true,
  genericArgumentFactories: true,
)
sealed class HumanModState with _$HumanModState {
  const factory HumanModState.initial() = HumanModInitial;
  const factory HumanModState.calculated({
    required HumanModResult result,
    required DateTime birthday,
  }) = HumanModCalculated;
  const factory HumanModState.notCalculated() = HumanModNotCalculated;

  factory HumanModState.fromJson(Map<String, dynamic> json) =>
      _$HumanModStateFromJson(json);
}

class HumanModCubit extends HydratedCubit<HumanModState> {
  HumanModCubit() : super(const HumanModState.initial());

  void selectBirthday(DateTime birthday) {
    final calculator = HumanModCalculator(
      birthday: birthday,
      dateTimeProvider: DateTimeProvider(),
    );
    final result = calculator.calculate();

    emit(
      HumanModState.calculated(
        result: result,
        birthday: birthday,
      ),
    );
  }

  @override
  HumanModState? fromJson(Map<String, dynamic> json) {
    return HumanModState.fromJson(json);
  }

  @override
  Map<String, dynamic>? toJson(HumanModState state) {
    return state.toJson();
  }
}
