import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_flutter/authentication_provider.dart';
import 'package:wallet_flutter/wallet_realm_model.dart';
import './wallet_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(onPressed: logout, icon: const Icon(Icons.logout))
      ]),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 90,
            ),
            context.watch<WalletServices>().getPublicKeyHex == ''
                ? TextButton(
                    onPressed: addWallet, child: const Text('Add Wallet'))
                : Column(
                    children: [
                      const Text(
                        '0.00',
                        style: TextStyle(
                            fontSize: 50, fontWeight: FontWeight.bold),
                      ),
                      const Text('Eth', style: TextStyle(fontSize: 25)),
                      TextButton(
                          onPressed: addWallet,
                          child: const Text('Add another Wallet'))
                    ],
                  ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text('Send Eth')),
                ElevatedButton(
                    onPressed: () {}, child: const Text('Receive Eth')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void logout() {
    context.read<LoginRealm>().logout();
  }

  void addWallet() {
    context.read<WalletServices>().getABI();
  }
}
