import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mochilas/models/app_routes.dart';
import 'package:mochilas/models/user.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  TextEditingController? emailController;
  TextEditingController? passwordController;
  TextEditingController? nameController;
  String? passwordText, emailText, nameText;

  // ignore: unused_field
  static UserApp? user = UserApp(nome: '', email: '');

  var auth = FirebaseAuth.instance;

  late bool passwordVisibility;

  openProdutcPage() {
    Navigator.pushReplacementNamed(
      context,
      AppRoutes.PRODUCTPAGE,
      arguments: {'name': nameText},
    );
  }

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    nameController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    nameController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.grey[600],
        child: Column(
          children: [
            GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: SizedBox(
                height: MediaQuery.of(context).size.height - 200,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(12),
                          gradient: const LinearGradient(
                            colors: [
                              Colors.white60,
                              Colors.white,
                              Colors.white60,
                            ],
                          ),
                        ),
                        child: Text(
                          'Cadastre-se usando o nome, email e senha!',
                          textAlign: TextAlign.center,
                          style: Theme.of(context).textTheme.bodyText1,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white70,
                        ),
                        child: TextField(
                          controller: nameController,
                          keyboardType: TextInputType.name,
                          autofocus: true,
                          decoration: InputDecoration(
                            labelText: 'Nome',
                            hintText: 'Digite seu nome!',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          onChanged: (text) {
                            nameText = text;
                            //print(nameText);
                          },
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white70,
                        ),
                        child: TextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          autofocus: true,
                          onChanged: (text) {
                            emailText = text;
                            //print(emailText);
                          },
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Digite seu email!',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white70),
                        child: TextField(
                          controller: passwordController,
                          obscureText: true,
                          keyboardType: null,
                          onChanged: (text) {
                            passwordText = text;
                            //print(passwordText);
                          },
                          decoration: InputDecoration(
                            labelText: 'Senha',
                            hintText: 'Digite sua senha!',
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.white54,
                              Colors.white,
                              Colors.white54,
                            ],
                          ),
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: CupertinoButton(
                          onPressed: () async {
                            user = UserApp(nome: nameText!, email: emailText!);
                            // print(user!.nome);
                            //print(user!.email);
                            auth
                              ..createUserWithEmailAndPassword(
                                email: emailText!,
                                password: passwordText!,
                              )
                              ..createUserWithEmailAndPassword(
                                      email: emailText!,
                                      password: passwordText!)
                                  .then(
                                (value) => openProdutcPage(),
                              );
                          },
                          child: Text(
                            'Cadastrar',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ),
                      const SizedBox(height: 12),
                      Container(
                        width: 180,
                        decoration: BoxDecoration(
                          gradient: const LinearGradient(
                            colors: [
                              Colors.white54,
                              Colors.white,
                              Colors.white54,
                            ],
                          ),
                          color: Colors.white60,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: CupertinoButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Voltar para Log.in',
                            textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
