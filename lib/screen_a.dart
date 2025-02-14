import 'package:flutter/cupertino.dart';
import 'package:mirai/mirai.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Mirai.fromNetwork(
            request:
            const MiraiNetworkRequest(url: 'https://mirai-example-default-rtdb.firebaseio.com/screens/screen_a.json'),
            context: context));
  }
}
