import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petsitting/core/error/app_error.dart';
import 'package:petsitting/core/error/bloc/error_event.dart';
import 'package:petsitting/core/error/bloc/error_state.dart';

class ErrorBloc extends Bloc<ErrorEvent, ErrorState> {
  ErrorBloc() : super(const ErrorState.noError()) {
    on<ErrorOccurred>(_onErrorOccurred);
    on<ErrorMessageOccurred>(_onErrorMessageOccurred);
    on<ClearError>(_onClearError);
  }

  void _onErrorOccurred(ErrorOccurred event, Emitter<ErrorState> emit) {
    emit(ErrorState.hasError(event.error));
  }

  void _onErrorMessageOccurred(ErrorMessageOccurred event, Emitter<ErrorState> emit) {
    emit(ErrorState.hasErrorMessage(event.message));
  }

  void _onClearError(ClearError event, Emitter<ErrorState> emit) {
    emit(const ErrorState.noError());
  }

  void handleError(AppError error) {
    add(ErrorOccurred(error));
  }

  void handleErrorMessage(String message) {
    add(ErrorMessageOccurred(message));
  }

  void clearError() {
    add(const ClearError());
  }
}
