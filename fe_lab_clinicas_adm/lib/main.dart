import 'dart:async';
import 'dart:developer';

import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

void main() {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    runApp(const LabClinicasAdm());
  }, (error, stack) {
    log('Erro não tratado', error: error, stackTrace: stack);
    throw error;
  });
}

class LabClinicasAdm extends StatelessWidget {
  const LabClinicasAdm({super.key});

  @override
  Widget build(BuildContext context) {
    return const LabClinicasCoreConfig(
      title: 'Lab Clínicas ADM',
    );
  }
}