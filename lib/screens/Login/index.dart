import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController _inputCPFController;
  TextEditingController _inputPasswordController;

  var cpfMask = new MaskTextInputFormatter(
    mask: '###.###.###-##',
    filter: {"#": RegExp(r'[0-9]')},
  );

  void initState() {
    super.initState();
    _inputCPFController = TextEditingController();
    _inputPasswordController = TextEditingController();
  }

  void dispose() {
    _inputPasswordController.dispose();
    _inputCPFController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,        
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 64),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Bem vindo!",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(height: 8),
                  Text(
                    "Para entrar na sua conta, faça o login!",
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      controller: _inputCPFController,
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      inputFormatters: [cpfMask],
                      decoration: InputDecoration(
                        labelText: "CPF",
                        labelStyle: TextStyle(color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusColor: Colors.blue,
                      ),
                      validator: (value) {
                        if (value.isEmpty || value.length < 14) {
                          return 'Insira um CPF válido';
                        }
                        return null;
                      },
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 24),
                    child: TextFormField(
                      controller: _inputPasswordController,
                      keyboardType: TextInputType.visiblePassword,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "Senha",
                        labelStyle: TextStyle(color: Colors.black),
                        floatingLabelBehavior: FloatingLabelBehavior.always,
                        focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                      ),
                      validator: (value) {
                        if (value.isEmpty || value.length < 5) {
                          return 'Insira uma senha válida';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      color: Theme.of(context).primaryColor,
                      textColor: Colors.white,
                      child: Text("Entrar"),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          final userLogin = {
                            "CPF": _inputCPFController.text,
                            "Senha": _inputPasswordController.text
                          };

                          print(userLogin);
                        }
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
