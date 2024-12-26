import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/text_scaler.dart';
import '../widgets/password_input.dart';
import 'common.dart';

String? validateEmail(String? email) {
  const requiredMessage = "O email é obrigatório.";
  const invalidMessage = "Email inválido.";

  if (email == null || email.isEmpty) {
    return requiredMessage;
  }
  if ('@'.allMatches(email).length != 1) {
    return invalidMessage;
  }
  final splittedEmail = email.split("@");
  final domain = splittedEmail[1];
  if (!domain.contains(".")) {
    return invalidMessage;
  }
  final splittedDomain = domain.split(".");
  if (splittedDomain[1].isEmpty) {
    return invalidMessage;
  }
  return null;
}

Widget emailInput(
    {required TextEditingController controller, bool enabled = true}) {
  return TextFormField(
    controller: controller,
    keyboardType: TextInputType.emailAddress,
    validator: validateEmail,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    style: TextStyles.body,
    enabled: enabled,
  );
}

Widget nameInput({required TextEditingController controller}) {
  return TextFormField(
    controller: controller,
    validator: validateName,
    autovalidateMode: AutovalidateMode.onUserInteraction,
    style: TextStyles.body,
  );
}

String? validateName(String? nome) {
  return null;
}

Widget title(BuildContext context, String text) {
  return Text(
    text,
    textScaler: textScaler(context),
    style: TextStyles.title,
    textAlign: TextAlign.start,
  );
}

class UsuarioPage extends StatefulWidget {
  const UsuarioPage({super.key});

  @override
  State<UsuarioPage> createState() => _UsuarioPageState();
}

class _UsuarioPageState extends State<UsuarioPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  void editUserAction({
    required TextEditingController name,
    required TextEditingController email,
    required TextEditingController password,
    required TextEditingController passwordConfirmation,
  }) {}

  Widget editUsuarioForm(BuildContext context) {
    return Container(
        decoration: appContainerDecoration,
        padding: const EdgeInsets.symmetric(
            vertical: defaultSpace, horizontal: defaultSpace),
        child: Form(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            title(context, "Editar usuário"),
            const SizedBox(height: defaultSpace),
            fieldLabel(context, "Nome"),
            nameInput(controller: nameController),
            const SizedBox(height: defaultSpace),
            fieldLabel(context, "Email"),
            emailInput(controller: emailController, enabled: false),
            const SizedBox(height: defaultSpace),
            fieldLabel(context, "Senha"),
            PasswordField(controller: passwordController),
            const SizedBox(height: defaultSpace),
            fieldLabel(context, "Confirme a Senha"),
            PasswordField(controller: passwordConfirmationController),
            const SizedBox(height: defaultSpace),
            primaryButton(
                label: "Salvar",
                onPressed: () => editUserAction(
                    name: nameController,
                    email: emailController,
                    password: passwordController,
                    passwordConfirmation: passwordConfirmationController))
          ],
        )));
  }

  @override
  Widget build(BuildContext context) {
    return baseScaffold(context: context, child: const Text("Pagamentos"));
  }
}
