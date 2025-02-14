import 'package:flutter/cupertino.dart';
import 'package:mirai/mirai.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Mirai.fromNetwork(
            request:
            const MiraiNetworkRequest(url: 'https://mirai-example-default-rtdb.firebaseio.com/screens/screen_b.json'),
            context: context));
  }
}
