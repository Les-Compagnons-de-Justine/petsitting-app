// lib/core/widgets/error_display_widget.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:petsitting/core/error/app_error.dart';
import 'package:petsitting/core/error/bloc/error_bloc.dart';
import 'package:petsitting/core/error/bloc/error_state.dart';

class ErrorDisplayWidget extends StatelessWidget {
  const ErrorDisplayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ErrorBloc, ErrorState>(
      builder: (context, state) {
        return state.maybeWhen(
          hasError: (error) => Material(
            child: Container(
              color: _getColorForSeverity(error.severity),
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Erreur: ${error.code}',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(error.message, style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<ErrorBloc>().clearError(),
                    child: const Text('Fermer'),
                  ),
                ],
              ),
            ),
          ),
          hasErrorMessage: (message) => Material(
            child: Container(
              color: Colors.red,
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Erreur',
                    style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.white),
                  ),
                  const SizedBox(height: 8),
                  Text(message, style: const TextStyle(color: Colors.white)),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: () => context.read<ErrorBloc>().clearError(),
                    child: const Text('Fermer'),
                  ),
                ],
              ),
            ),
          ),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Color _getColorForSeverity(ErrorSeverity severity) {
    switch (severity) {
      case ErrorSeverity.low:
        return Colors.yellow;
      case ErrorSeverity.medium:
        return Colors.orange;
      case ErrorSeverity.high:
        return Colors.red;
      case ErrorSeverity.critical:
        return Colors.purple;
    }
  }
}
