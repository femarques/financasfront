import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../utils/routes.dart';
import '../utils/text_scaler.dart';
import '../widgets/password_input.dart';
import 'common.dart';
import 'usuario.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void loginAction() {
    bool isValid = formKey.currentState!.validate();
    if (!isValid) {
      return;
    }
    // do login
  }

  Widget loginButton() {
    return primaryButton(
        label: "Login", onPressed: loginAction, matchParentWidth: true);
  }

  void signUpAction(BuildContext context) {
    navigateToPage(context, AppPage.signup);
  }

  Widget signUpButton(BuildContext context) {
    return secondaryButton(
        label: "Criar usuário",
        onPressed: () => signUpAction(context),
        matchParentWidth: true);
  }

  Widget welcomeText(BuildContext context) {
    return Text(
      AppStrings.welcomeApp,
      textScaler: textScaler(context),
      style: TextStyles.title,
      textAlign: TextAlign.start,
    );
  }

  Widget loginForm(BuildContext context) {
    return Container(
        decoration: appContainerDecoration,
        padding: const EdgeInsets.symmetric(
            vertical: defaultSpace, horizontal: defaultSpace),
        child: Form(
            key: formKey,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              fieldLabel(context, "Email"),
              emailInput(controller: emailController),
              const SizedBox(height: defaultSpace),
              fieldLabel(context, "Senha"),
              PasswordField(controller: passwordController),
              const SizedBox(height: defaultSpace),
              loginButton()
            ])));
  }

  @override
  Widget build(BuildContext context) {
    return baseScaffold(
        context: context,
        showDrawer: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            welcomeText(context),
            const SizedBox(height: defaultSpace),
            loginForm(context),
            const SizedBox(height: defaultSpace),
            const Divider(color: midGrey),
            const SizedBox(height: defaultSpace),
            signUpButton(context)
          ],
        ));
  }
}
