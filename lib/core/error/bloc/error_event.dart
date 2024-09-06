import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:petsitting/core/error/app_error.dart';

part 'error_event.freezed.dart';

@freezed
class ErrorEvent with _$ErrorEvent {
  const factory ErrorEvent.errorOccurred(AppError error) = ErrorOccurred;
  const factory ErrorEvent.errorMessageOccurred(String message) = ErrorMessageOccurred;
  const factory ErrorEvent.clearError() = ClearError;
}
