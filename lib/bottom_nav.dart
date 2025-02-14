import 'package:flutter/cupertino.dart';
import 'package:mirai/mirai.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    //rendered UI from server
    return Center(
        child: Mirai.fromNetwork(
            request: const MiraiNetworkRequest(
                url: 'https://mirai-example-default-rtdb.firebaseio.com/screens/bottom_nav.json'),
            context: context));
  }
}