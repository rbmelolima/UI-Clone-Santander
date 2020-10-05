import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:ui_bank/screens/Account/index.dart';

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
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 64),
              child: SvgPicture.asset(
                'images/santander-logo.svg',
                color: Colors.white,
                width: 200,
              ),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  Input(
                    controller: _inputCPFController,
                    errorText: "Insira seu CPF",
                    keyboard: TextInputType.number,
                    label: "CPF",
                    obscureText: false,
                    mask: cpfMask,
                  ),
                  Input(
                    controller: _inputPasswordController,
                    errorText: "Insira sua senha",
                    keyboard: TextInputType.visiblePassword,
                    label: "Senha",
                    obscureText: true,
                    mask: MaskTextInputFormatter(mask: ''),
                  ),
                  Container(height: 16),
                  SizedBox(
                    width: double.infinity,
                    child: RaisedButton(
                      padding: EdgeInsets.symmetric(vertical: 16),
                      color: Theme.of(context).accentColor,
                      textColor: Colors.white,
                      child: Text(
                        "Entrar",
                        style: Theme.of(context).textTheme.button,
                      ),
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          final userLogin = {
                            "CPF": _inputCPFController.text,
                            "Senha": _inputPasswordController.text
                          };

                          print(userLogin);

                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Account(),
                            ),
                          );
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

class Input extends StatelessWidget {
  final TextEditingController controller;
  final TextInputType keyboard;
  final String label;
  final bool obscureText;
  final String errorText;
  final MaskTextInputFormatter mask;

  const Input({
    Key key,
    this.controller,
    this.keyboard,
    this.label,
    this.obscureText,
    this.errorText,
    this.mask,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: TextFormField(
        controller: controller,
        keyboardType: keyboard,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
        ),
        obscureText: obscureText,
        inputFormatters: [mask],
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: Colors.grey[100]),
          floatingLabelBehavior: FloatingLabelBehavior.always,
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 2,
            ),
          ),
          errorStyle: TextStyle(color: Colors.grey[200]),
        ),
        validator: (value) {
          if (value.isEmpty) {
            return errorText;
          }
          return null;
        },
      ),
    );
  }
}
