import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

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
        title: Text("Santander"),
        actions: [
          IconButton(
            icon: Icon(Feather.bell),
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
          _ShoppingCard(),
          _UserCards(),
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
            padding: EdgeInsets.symmetric(
              vertical: 24,
              horizontal: 16,
            ),
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
                      child: Icon(FontAwesome.dollar),
                      margin: EdgeInsets.only(right: 16),
                    ),
                    Text(
                      "Saldo disponível",
                      style: Theme.of(context).textTheme.headline1,
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
      height: 126,
      color: Theme.of(context).backgroundColor,
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      margin: EdgeInsets.symmetric(vertical: 24),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          _shortcutCard(
            icon: Feather.credit_card,
            iconColor: Theme.of(context).primaryColorLight,
            position: 1,
            text: "Pagar",
            textStyle: Theme.of(context).textTheme.caption,
          ),
          _shortcutCard(
            icon: Feather.gift,
            iconColor: Theme.of(context).primaryColorLight,
            position: 2,
            text: "Transferir",
            textStyle: Theme.of(context).textTheme.caption,
          ),
          _shortcutCard(
            icon: Feather.message_square,
            iconColor: Theme.of(context).primaryColorLight,
            position: 3,
            text: "Atendimento",
            textStyle: Theme.of(context).textTheme.caption,
          ),
          _shortcutCard(
            icon: Feather.smartphone,
            iconColor: Theme.of(context).primaryColorLight,
            position: 4,
            text: "Recarga",
            textStyle: Theme.of(context).textTheme.caption,
          ),
          _shortcutCard(
            icon: Feather.file,
            iconColor: Theme.of(context).primaryColorLight,
            position: 5,
            text: "Boletos",
            textStyle: Theme.of(context).textTheme.caption,
          ),
        ],
      ),
    );
  }

  Widget _shortcutCard({
    Color iconColor,
    IconData icon,
    String text,
    int position,
    TextStyle textStyle,
  }) {
    return Container(
      width: 110,
      margin: position % 2 == 0
          ? EdgeInsets.only(right: 8, left: 8)
          : EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: Colors.white,
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: iconColor,
          ),
          Container(
            margin: EdgeInsets.only(top: 8),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: textStyle,
            ),
          )
        ],
      ),
    );
  }
}

class _ShoppingCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 24, horizontal: 16),
      margin: EdgeInsets.only(left: 16, right: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Expanded(
            child: Icon(
              Feather.shopping_cart,
              color: Theme.of(context).primaryColor,
            ),
            flex: 1,
          ),
          Expanded(
            flex: 4,
            child: Text(
              "Conheça o Shopping Santander: As melhores ofertas e benefícios. Clique aqui!",
              style: Theme.of(context).textTheme.caption,
            ),
          )
        ],
      ),
    );
  }
}

class _UserCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Cartões",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(16),
            margin: EdgeInsets.only(top: 16),
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
                        child: Icon(Feather.credit_card),
                        margin: EdgeInsets.only(right: 16),
                      ),
                      Text(
                        "Meus cartões",
                        style: Theme.of(context).textTheme.headline1,
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 32, bottom: 16),
                  child: Text(
                    "Você não tem cartões. Peça o seu!",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
                SizedBox(
                  width: double.infinity,
                  child: RaisedButton(
                    elevation: 0,
                    padding: EdgeInsets.symmetric(vertical: 16),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    child: Text("Pedir cartão"),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
          Container(height: 24),
          SizedBox(
            width: double.infinity,
            child: OutlineButton(
              onPressed: () {},
              child: Text("Cartão Online"),
              textColor: Theme.of(context).primaryColor,
              padding: EdgeInsets.symmetric(vertical: 16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4),
              ),
              borderSide: BorderSide(color: Theme.of(context).primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
