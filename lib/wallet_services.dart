// ignore_for_file: avoid_print

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:web3dart/crypto.dart';
import 'package:web3dart/web3dart.dart';

class WalletServices extends ChangeNotifier {
  var publicKeyHex = '';

  Future<void> getABI() async {
    var rng = Random.secure();
    EthPrivateKey random = EthPrivateKey.createRandom(rng);
    var address = await random.address;
    var publickey = await random.privateKey;

    publicKeyHex = bytesToHex(publickey).split('').reversed.join('');
    publicKeyHex = publicKeyHex.substring(0, publicKeyHex.length - 2);
    publicKeyHex = publicKeyHex.split('').reversed.join('');

    print(address.hex + " --- " + bytesToHex(publickey));
    print(publicKeyHex);
  }

  String getPublicKeyHex() {
    return publicKeyHex;
  }
}
