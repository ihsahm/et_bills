import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/entypo_icons.dart';
import 'package:fluttericon/iconic_icons.dart';
import 'package:fluttericon/linecons_icons.dart';
import 'package:fluttericon/octicons_icons.dart';
import 'package:ussd/ussd.dart';

class CbePay extends StatelessWidget {
  Future<void> launchUssd(String ussdCode) async {
    Ussd.runUssd(ussdCode);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(children: <Widget>[
          ListTile(
            leading: const Icon(
              Linecons.wallet,
              color: Colors.orange,
            ),
            title: const Text('My balance'),
            onTap: () {
              launchUssd("*847*6*1458#");
            },
          ),
          Divider(
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
            leading: const Icon(Icons.power_outlined, color: Colors.red),
            title: const Text('Electricity bill'),
            onTap: () {
              launchUssd("*847*5*2*707070*100000254927#");
            },
          ),
          ListTile(
            leading: const Icon(
              Entypo.water,
              color: Colors.lightBlue,
            ),
            title: const Text('Water bill'),
            onTap: () {
              launchUssd("*847*5*2*878787*6933630#");
            },
          ),
          ListTile(
            leading: const Icon(
              Entypo.signal,
              color: Colors.green,
            ),
            title: Text('Wifi bill'),
            onTap: () {
              launchUssd("*847*5*4*2*669207209*4*1458#");
            },
          ),
          Divider(
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
              leading: const Icon(
                Octicons.person,
                color: Colors.green,
              ),
              title: const Text('Mobile card'),
              subtitle: const Text('For self'),
              onTap: () {
                showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return Wrap(children: [
                        ListTile(
                          title: const Text('5 Birr'),
                          onTap: () {
                            launchUssd("*847*3*1*5*1458*1#");
                          },
                        ),
                        ListTile(
                          title: const Text('10 Birr'),
                          onTap: () {
                            launchUssd("*847*3*1*10*1458*1#");
                          },
                        ),
                        ListTile(
                          title: const Text('15 Birr'),
                          onTap: () {
                            launchUssd("*847*3*1*15*1458*1#");
                          },
                        ),
                        ListTile(
                          title: const Text('25 Birr'),
                          onTap: () {
                            launchUssd("*847*3*1*25*1458*1#");
                          },
                        ),
                        ListTile(
                          title: const Text('Others'),
                          onTap: () {
                            launchUssd("*847*3*1#");
                          },
                        ),
                      ]);
                    });
              }),
          ListTile(
              leading: const Icon(
                Elusive.group,
                color: Colors.blue,
              ),
              title: const Text('Mobile card'),
              subtitle: const Text('For others'),
              onTap: () {
                launchUssd("*847*3*2*1#");
              }),
          Divider(
            thickness: 1,
            indent: 10,
            endIndent: 10,
          ),
          ListTile(
              leading: const Icon(
                Iconic.exchange,
                color: Colors.blueGrey,
              ),
              title: const Text('Transfer money'),
              onTap: () {
                launchUssd("*847*1#");
              }),
        ]),
      ),
    );
  }
}
