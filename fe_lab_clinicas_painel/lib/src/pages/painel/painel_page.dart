import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:fe_lab_clinicas_painel/src/pages/painel/widgets/painel_principal_widget.dart';
import 'package:fe_lab_clinicas_painel/src/pages/painel/widgets/password_tile.dart';
import 'package:flutter/material.dart';

class PainelPage extends StatelessWidget {
  const PainelPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: LabClinicasAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: const PainelPrincipalWidget(
                    passwordLabel: 'Senha anterior',
                    password: 'BG5898',
                    deskNumber: '04',
                    labelColor: LabClinicasTheme.orangeColor,
                    buttonColor: LabClinicasTheme.blueColor,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .4,
                  child: const PainelPrincipalWidget(
                    passwordLabel: 'Chamando Senha',
                    password: 'NJ2435',
                    deskNumber: '04',
                    labelColor: LabClinicasTheme.blueColor,
                    buttonColor: LabClinicasTheme.orangeColor,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            const Divider(color: LabClinicasTheme.orangeColor),
            const SizedBox(height: 30),
            const Text(
              'Últimos Chamados',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: LabClinicasTheme.orangeColor,
              ),
            ),
            const SizedBox(height: 16),
            const Wrap(
              runAlignment: WrapAlignment.center,
              spacing: 10,
              runSpacing: 10,
              children: [
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
                PasswordTile(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
