class AppError {
  final String message;
  final String code;
  final ErrorSeverity severity;
  final dynamic exception;
  final StackTrace? stackTrace;

  AppError({
    required this.message,
    required this.code,
    required this.severity,
    this.exception,
    this.stackTrace,
  });
}

enum ErrorSeverity { low, medium, high, critical }
