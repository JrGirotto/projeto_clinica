import 'package:fe_lab_clinicas_core/fe_lab_clinicas_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getit/flutter_getit.dart';
import 'package:signals_flutter/signals_flutter.dart';
import 'package:validatorless/validatorless.dart';

import 'package:fe_lab_clinicas_painel/src/login/login_controller.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with MessageViewMixin {
  final formKey = GlobalKey<FormState>();

  final emailEC = TextEditingController();
  final passwordlEC = TextEditingController();
  final controller = Injector.get<LoginController>();

  @override
  void initState() {
    messageListener(controller);
    effect(() {
      if (controller.logged) {
        Navigator.of(context).pushReplacementNamed('/home');
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    emailEC.dispose();
    passwordlEC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeOf = MediaQuery.sizeOf(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          constraints: BoxConstraints(minHeight: sizeOf.height),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background_login.png'),
                  fit: BoxFit.cover)),
          child: Center(
            child: Container(
              padding: const EdgeInsets.all(40),
              constraints: BoxConstraints(maxWidth: sizeOf.width * .4),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(16)),
              child: Form(
                key: formKey,
                child: Column(
                  children: [
                    const Text(
                      'Login',
                      style: LabClinicasTheme.titleStyle,
                    ),
                    const SizedBox(height: 32),
                    TextFormField(
                      controller: emailEC,
                      validator: Validatorless.multiple([
                        Validatorless.required('Email obrigatório'),
                        Validatorless.email('Email inválido')
                      ]),
                      decoration: const InputDecoration(label: Text('Email')),
                    ),
                    const SizedBox(height: 24),
                    Watch(
                      (_) {
                        return TextFormField(
                          controller: passwordlEC,
                          obscureText: controller.obscurePassword,
                          validator:
                              Validatorless.required('Senha obrigatória'),
                          decoration: InputDecoration(
                              label: const Text('Senha'),
                              suffixIcon: IconButton(
                                onPressed: () {
                                  controller.passwordToggle();
                                },
                                icon: controller.obscurePassword
                                    ? const Icon(Icons.visibility)
                                    : const Icon(Icons.visibility_off),
                              )),
                        );
                      },
                    ),
                    const SizedBox(height: 32),
                    SizedBox(
                        width: sizeOf.width * .8,
                        height: 48,
                        child: ElevatedButton(
                            onPressed: () {
                              final valid =
                                  formKey.currentState?.validate() ?? false;
                              if (valid) {
                                controller.login(
                                    emailEC.text, passwordlEC.text);
                              }
                            },
                            child: const Text('ENTRAR')))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
