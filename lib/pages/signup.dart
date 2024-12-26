import 'package:financasfront/pages/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/constants.dart';
import '../widgets/password_input.dart';
import 'usuario.dart';

void signUpAction({
  required TextEditingController name,
  required TextEditingController email,
  required TextEditingController password,
  required TextEditingController passwordConfirmation,
}) {}

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nomeController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController passwordConfirmationController =
      TextEditingController();

  final _formKey = GlobalKey<FormState>();

  Widget signUpForm(BuildContext context) {
    return Container(
        decoration: appContainerDecoration,
        padding: const EdgeInsets.symmetric(
            vertical: defaultSpace, horizontal: defaultSpace),
        child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                title(context, "Criar usuário"),
                const SizedBox(height: defaultSpace),
                fieldLabel(context, "Nome"),
                nameInput(controller: nomeController),
                const SizedBox(height: defaultSpace),
                fieldLabel(context, "Email"),
                emailInput(controller: emailController),
                const SizedBox(height: defaultSpace),
                fieldLabel(context, "Senha"),
                PasswordField(controller: passwordController),
                const SizedBox(height: defaultSpace),
                fieldLabel(context, "Confirme a senha"),
                PasswordField(controller: passwordConfirmationController),
                const SizedBox(height: defaultSpace),
                primaryButton(
                    label: "Salvar",
                    onPressed: () => signUpAction(
                        name: nomeController,
                        email: emailController,
                        password: passwordController,
                        passwordConfirmation: passwordConfirmationController))
              ],
            )));
  }

  @override
  Widget build(BuildContext context) {
    return baseScaffold(
        context: context, child: signUpForm(context), showDrawer: false);
  }
}

String? comparePasswords(
    {required String? password, required String? confirmation}) {
  if (password != confirmation) {
    return "Senhas não conferem.";
  }
  return null;
}
