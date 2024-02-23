import 'package:fe_lab_clinicas_adm/src/shared/data_item.dart';
import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';

class PreCheckinPage extends StatelessWidget {
  const PreCheckinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LabClinicasAppBar(),
      body: SingleChildScrollView(
        child: Align(
          alignment: Alignment.topCenter,
          child: Container(
            width: MediaQuery.sizeOf(context).width * 0.5,
            padding: const EdgeInsets.all(40),
            margin: const EdgeInsets.only(top: 56),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              border: Border.all(color: LabClinicasTheme.orangeColor),
            ),
            child: Column(
              children: [
                Image.asset('assets/images/patient_avatar.png'),
                const SizedBox(height: 16),
                const Text(
                  'A Senha agora é:',
                  style: LabClinicasTheme.titleSmallStyle,
                ),
                const SizedBox(height: 16),
                Container(
                  alignment: Alignment.center,
                  padding:
                      const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
                  width: 218,
                  decoration: BoxDecoration(
                    color: LabClinicasTheme.orangeColor,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: const Text(
                    'Ze zezin',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const DataItem(
                  label: 'Nome Paciente',
                  value: 'Barrichello',
                  padding: EdgeInsets.only(bottom: 24),
                ),
                const DataItem(
                  label: 'E-mail',
                  value: 'Barrichello',
                  padding: EdgeInsets.only(bottom: 24),
                ),
                const DataItem(
                  label: 'Telefone',
                  value: 'Barrichello',
                  padding: EdgeInsets.only(bottom: 24),
                ),
                const DataItem(
                  label: 'CPF',
                  value: 'Barrichello',
                  padding: EdgeInsets.only(bottom: 24),
                ),
                const DataItem(
                  label: 'CEP:',
                  value: 'Barrichello',
                  padding: EdgeInsets.only(bottom: 24),
                ),
                const DataItem(
                  label: 'Endereço',
                  value: 'Barrichello',
                  padding: EdgeInsets.only(bottom: 24),
                ),
                const DataItem(
                  label: 'Responsável',
                  value: 'Barrichello',
                  padding: EdgeInsets.only(bottom: 24),
                ),
                const DataItem(
                  label: 'Documento de Identificação',
                  value: 'Barrichello',
                  padding: EdgeInsets.only(bottom: 24),
                ),
                const SizedBox(height: 48),
                Row(
                  children: [
                    Expanded(
                      child: OutlinedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size.fromHeight(48)),
                        onPressed: () {},
                        child: const Text('CHAMAR OUTRA PESSOA'),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            fixedSize: const Size.fromHeight(48)),
                        onPressed: () {},
                        child: const Text('ATENDER'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
