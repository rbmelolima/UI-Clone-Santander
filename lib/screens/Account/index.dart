import 'package:flutter/material.dart';
import 'package:ui_bank/components/Drawer/index.dart';
import 'package:ui_bank/components/UserAccountInformation/index.dart';
import 'package:ui_bank/style/Shadow/index.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: Text("Bank"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: [DrawerHeaderAccount(), DrawerList()],
        ),
      ),
      body: ListView(
        children: [
          _UserBalance(),
          _Shortcuts(),
        ],
      ),
    );
  }
}

class _UserBalance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          height: 150,
          alignment: Alignment.centerLeft,
          color: Theme.of(context).primaryColor,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
            child: UserAccountInformation(
              textColor: Colors.white,
            ),
          ),
        ),
        Container(
          height: 240,
          padding: EdgeInsets.all(16),
          width: double.infinity,
          margin: EdgeInsets.only(top: 100, left: 16, right: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
            boxShadow: [defaultShadow],
          ),
          child: Column(
            children: [
              Container(
                child: Row(
                  children: [
                    Container(
                      child: Icon(Icons.monetization_on),
                      margin: EdgeInsets.only(right: 16),
                    ),
                    Text(
                      "Saldo disponível",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 32, bottom: 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(bottom: 8),
                      child: Text(
                        "R\$: 1000,00",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Saldo + Limite: R\$: 1000,00",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                color: Colors.grey[700],
              ),
              Container(
                alignment: Alignment.center,
                child: FlatButton(
                  child: Text(
                    "Ver Extrato",
                    style: TextStyle(
                      color: Theme.of(context).primaryColor,
                    ),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Shortcuts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 116,
      color: Theme.of(context).backgroundColor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 32),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _shortcutCard(
            icon: Icons.account_balance,
            iconColor: Theme.of(context).primaryColorLight,
            position: 1,
            text: "Pagar"
          ),
          _shortcutCard(
            icon: Icons.account_balance,
            iconColor: Theme.of(context).primaryColorLight,
            position: 2,
            text: "Transferir"
          ),
          _shortcutCard(
            icon: Icons.account_balance,
            iconColor: Theme.of(context).primaryColorLight,
            position: 3,
            text: "Atendimento"
          ),         
        ],
      ),
    );
  }
}

Widget _shortcutCard(
    {Color iconColor, IconData icon, String text, int position}) {
  return Container(
    width: 110,
    margin: position % 2 == 0
        ? EdgeInsets.only(right: 16, left: 16)
        : EdgeInsets.all(0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: Colors.white,
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: iconColor,
        ),
        Container(
          margin: EdgeInsets.only(top: 16),
          child: Text(
            text,
            style: TextStyle(color: Colors.grey),
          ),
        )
      ],
    ),
  );
}
