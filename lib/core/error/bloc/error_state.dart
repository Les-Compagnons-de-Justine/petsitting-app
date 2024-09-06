import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/core/error/app_error.dart';

part 'error_state.freezed.dart';

@freezed
class ErrorState with _$ErrorState {
  const factory ErrorState.noError() = NoError;
  const factory ErrorState.hasError(AppError error) = HasError;
  const factory ErrorState.hasErrorMessage(String message) = HasErrorMessage;
}
