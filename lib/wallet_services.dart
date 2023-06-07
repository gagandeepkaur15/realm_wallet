// ignore_for_file: avoid_print

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:wallet_flutter/wallet_realm_model.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';
import 'package:realm/realm.dart';

class WalletServices extends ChangeNotifier {
  var publicKeyHex = '';

  late final Realm localRealm;

  RealmResults<MyCredentials>? myCredentials;

  Future<void> getABI() async {
    var rng = Random.secure();
    EthPrivateKey random = EthPrivateKey.createRandom(rng);

    var address = await random.address;
    var publickey = await random.privateKey;

    publicKeyHex = bytesToHex(publickey).split('').reversed.join('');
    publicKeyHex = publicKeyHex.substring(0, publicKeyHex.length - 2);
    publicKeyHex = publicKeyHex.split('').reversed.join('');
    var address1 = address.hex;

    print(address1 + " --- " + bytesToHex(publickey));
    print(publicKeyHex);

    create(publicKeyHex, address1);
  }

  String getPublicKeyHex() {
    return publicKeyHex;
  }

  void create(String publicKey, String address) {
    localRealm.write(() {
      localRealm.add(MyCredentials(publicKeyHex, address));
    });
    notifyListeners();
  }

  void intialize(User user) {
    final configLocal = Configuration.local([MyCredentials.schema]);
    localRealm = Realm(configLocal);

    myCredentials = localRealm.all<MyCredentials>();
    notifyListeners();
  }
}
