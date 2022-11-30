import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mochilas/models/app_routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController? emailController;
  TextEditingController? passwordController;
  String? passwordText, emailText;

  var auth = FirebaseAuth.instance;

  late bool passwordVisibility;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    passwordVisibility = false;
  }

  @override
  void dispose() {
    emailController?.dispose();
    passwordController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey[600],
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
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
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CupertinoButton(
                      onPressed: () async {
                        auth
                            .signInWithEmailAndPassword(
                              email: emailText!,
                              password: passwordText!,
                            )
                            .then(
                              (value) => Navigator.of(context)
                                  .pushNamed(AppRoutes.PRODUCTPAGE),
                            );
                      },
                      child: Text(
                        'Log.In',
                        style: Theme.of(context).textTheme.button,
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
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: CupertinoButton(
                      onPressed: () {
                        Navigator.pushNamed(context, AppRoutes.CADASTROPAGE);
                      },
                      child: Text(
                        'Cadastrar',
                        style: Theme.of(context).textTheme.headline2,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
