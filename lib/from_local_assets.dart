import 'package:flutter/cupertino.dart';
import 'package:mirai/mirai.dart';

class FormLocalAssets extends StatelessWidget {
  const FormLocalAssets({super.key});

  @override
  Widget build(BuildContext context) {
    //rendered UI from local assets
    return Center(child: Mirai.fromAssets('assets/json/json_example.json'));
  }
}
