import 'package:asyncstate/asyncstate.dart' as asyncstate;
import 'package:fe_lab_clinicas_adm/src/repositories/attendant_desk_assignment/attendant_desk_assignment_repository.dart';
import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';

class HomeController with MessageStateMixin {
  final AttendantDeskAssignmentRepository _attendantDeskAssignmentRepository;

  HomeController({
    required AttendantDeskAssignmentRepository
        attendantDeskAssignmentRepository,
  }) : _attendantDeskAssignmentRepository = attendantDeskAssignmentRepository;

  Future<void> startSevice(int deskNumber) async {
    asyncstate.AsyncState.show();
    final result =
        await _attendantDeskAssignmentRepository.startService(deskNumber);
    switch (result) {
      case Left<RepositoryException, Unit>():
        asyncstate.AsyncState.hide();
        showError('Erro ao iniciar Guichê');

      case Right<RepositoryException, Unit>():
        asyncstate.AsyncState.hide();
        // chamar próx. paciente
        showInfo('Registrado com sucesso!');
    }
  }
}
