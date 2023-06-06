import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_flutter/authentication_provider.dart';
import 'package:wallet_flutter/homepage.dart';
import 'package:wallet_flutter/register.dart';
import 'package:wallet_flutter/signin.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<LoginRealm>(create: (context) => LoginRealm()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SignIn2(),
      ),
    );
  }
}
