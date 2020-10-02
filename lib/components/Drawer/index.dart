import 'package:flutter/material.dart';
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
                    Icons.exit_to_app,
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

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Home"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Confirmações em aberto"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Saldo e extrato"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Transações"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Cartões"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Empréstimos"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Financiamentos"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Poupança"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Investimentos"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Consórcio"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Traga seu salário"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Informe de rendimentos"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Configurações"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Agências"),
          onTap: () {},
        ),
        _customDivider(),
        ListTile(
          leading: Icon(Icons.home),
          trailing: Icon(Icons.keyboard_arrow_right),
          title: Text("Atendimento"),
          onTap: () {},
        ),
        _customDivider(),
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
}