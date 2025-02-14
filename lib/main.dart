import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';
import 'package:mirai_example/screen_a.dart';
import 'package:mirai_example/screen_b.dart';

import 'bottom_nav.dart';
import 'from_local_assets.dart';
import 'login_page.dart';
import 'flutter_code.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Mirai.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: '/', routes: {
      '/': (context) => const LoginPage(),
      '/bottomNav': (context) => const BottomNav(),
      '/flutter_code': (context) => FlutterCode(),
      '/screen_a': (context) => ScreenA(),
      '/screen_b': (context) => ScreenB(),
      '/formLocalAssets': (context) => const FormLocalAssets()
    });
  }
}
////  