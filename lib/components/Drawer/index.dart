import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

import 'package:ui_bank/components/UserAccountInformation/index.dart';

class DrawerHeaderAccount extends StatelessWidget {
  const DrawerHeaderAccount({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      child: ListView(
        children: [
          UserAccountInformation(
            textColor: Colors.black,
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 24),
              child: Row(
                children: [
                  Icon(
                    Feather.log_in,
                    color: Theme.of(context).primaryColor,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 8),
                    child: Text(
                      "Sair do aplicativo",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  )
                ],
              ),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Feather.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Home", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Feather.file_minus),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Confirmações em aberto", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Feather.dollar_sign),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Saldo e extrato", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Feather.gift),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Transações", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Feather.credit_card),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Cartões", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(FontAwesome.handshake_o),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Empréstimos", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Feather.clock),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Financiamentos", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(AntDesign.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Poupança", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(FontAwesome.line_chart),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Investimentos", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Ionicons.ios_car),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Consórcio", style: textStyle),
          onTap: () {},
        ),
        _whiteSpace(),
        ListTile(
          leading: Icon(Ionicons.ios_cash),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Traga seu salário", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Feather.activity),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Informe de rendimentos", style: textStyle),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Feather.box),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Serviços da conta", style: textStyle),
          onTap: () {},
        ),
       _whiteSpace(),
        ListTile(
          leading: Icon(Feather.settings),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Configurações", style: textStyle),
          onTap: () {},
        ),
        _whiteSpace(),
        ListTile(
          leading: Icon(Feather.map_pin),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Agências", style: textStyle),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Feather.message_circle),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Atendimento", style: textStyle),
          onTap: () {},
        ),        
      ],
    );
  }

  Widget _customDivider() {
    return (Divider(
      color: Colors.grey[300],
      endIndent: 24,
      indent: 16,
      height: 2,
    ));
  }

  Widget _whiteSpace() {
    return Container(height: 32, color: Color(0xffEDF2F4));
  }

  TextStyle textStyle = TextStyle(
      fontSize: 14, fontWeight: FontWeight.normal, color: Colors.black87);
}
