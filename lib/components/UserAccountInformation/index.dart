import 'package:flutter/material.dart';

class UserAccountInformation extends StatelessWidget {
  final Color textColor;

  const UserAccountInformation({Key key, this.textColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Text(
              "Olá, Roger",
              style: TextStyle(
                color: textColor,
                fontSize: 16,
              ),
            ),
            margin: EdgeInsets.only(bottom: 8),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(right: 8),
                child: Text(
                  "Ac 0000",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                child: Text(
                  "Cc 00000000-0",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: textColor,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
