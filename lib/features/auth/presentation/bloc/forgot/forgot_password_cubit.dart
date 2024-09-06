import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'forgot_password_cubit.freezed.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState.initial() = _Initial;
  const factory ForgotPasswordState.loading() = _Loading;
  const factory ForgotPasswordState.success() = _Success;
  const factory ForgotPasswordState.failure(String error) = _Failure;
}

class ForgotPasswordCubit extends Cubit<ForgotPasswordState> {
  final FirebaseAuth _firebaseAuth;

  ForgotPasswordCubit(this._firebaseAuth) : super(const ForgotPasswordState.initial());

  Future<void> resetPassword(String email) async {
    emit(const ForgotPasswordState.loading());
    try {
      await _firebaseAuth.sendPasswordResetEmail(email: email);
      emit(const ForgotPasswordState.success());
    } on FirebaseAuthException catch (e) {
      emit(ForgotPasswordState.failure(_getErrorMessage(e)));
    } catch (e) {
      emit(const ForgotPasswordState.failure("Une erreur inattendue s'est produite."));
    }
  }

  String _getErrorMessage(FirebaseAuthException e) {
    switch (e.code) {
      case 'invalid-email':
        return "L'adresse e-mail n'est pas valide.";
      case 'user-not-found':
        return "Aucun utilisateur trouvé pour cette adresse e-mail.";
      default:
        return "Une erreur s'est produite lors de la réinitialisation du mot de passe.";
    }
  }
}
