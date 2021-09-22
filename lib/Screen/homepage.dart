import 'package:ethio_bills/Screen/cbe_pay.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: RichText(
            text: TextSpan(
                text: 'B',
                style: TextStyle(
                    color: Colors.blue[700],
                    fontSize: 19,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: 'ills',
                    style: TextStyle(color: Colors.black, fontSize: 18),
                  )
                ]),
          ),
          elevation: 0,
          backgroundColor: Colors.white12,
        ),
        body: CbePay());
  }
}
