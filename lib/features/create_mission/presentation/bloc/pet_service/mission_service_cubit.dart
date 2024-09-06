import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:petsitting/features/create_mission/presentation/bloc/pet_service/mission_service_state.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

class MissionServiceCubit extends HydratedCubit<MissionServiceState> {
  MissionServiceCubit() : super(const MissionServiceState.initial());

  void addService(MissionAnimalServiceCreationDTO service) {
    final currentServices = state.maybeWhen(
      loaded: (services) => services,
      orElse: () => <MissionAnimalServiceCreationDTO>[],
    );
    emit(MissionServiceState.loaded([...currentServices, service]));
  }

  void removeService(int index) {
    final currentServices = state.maybeWhen(
      loaded: (services) => services,
      orElse: () => <MissionAnimalServiceCreationDTO>[],
    );
    if (index >= 0 && index < currentServices.length) {
      final newServices = List<MissionAnimalServiceCreationDTO>.from(currentServices)..removeAt(index);
      emit(MissionServiceState.loaded(newServices));
    }
  }

  @override
  MissionServiceState? fromJson(Map<String, dynamic> json) => MissionServiceState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(MissionServiceState state) => state.toJson();
}
