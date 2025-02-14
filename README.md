# mirai_example

A new Flutter project.

## Getting Started 🚀

## Installation

To get started with Mirai, follow the installation instructions below:

Add the Mirai dependency to your pubspec.yaml file

Run this command:
``` flutter pub add mirai ```
or you can manually add the dependency by including the following in your pubspec.yaml:

```dart

dependencies:
mirai: ^<latest-version>

```

## How to Use Mirai

1. Import the Mirai Package

import 'package:mirai/mirai.dart';

2. Initialize Mirai
   Initialize Mirai in your main function to set up the necessary configurations:

 ```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Mirai.initialize();

  runApp(const MyApp());
}
```

3. Use Mirai to Render UI
   You can load and render the UI from JSON using various methods:

## Rendering UI from a JSON Object

```dart
import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

void main() async {
  await Mirai.initialize();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
// Replace `json` with your actual JSON data.
    return MaterialApp(
      title: 'MiraiDemo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Mirai.fromJson(json, context),
    );
  }
}
```

## Rendering UI from a JSON File in Assets

```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'MiraiDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Mirai.fromAsset('assets/ui.json', context),
  );
}
```

## Rendering UI from a Network Request

```dart
@override
Widget build(BuildContext context) {
  return MaterialApp(
    title: 'MiraiDemo',
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: Mirai.fromNetwork(
      request: MiraiNetworkRequest(
        url: 'https://example.com/ui.json',
      ),
      context: context,
    ),
  );
}
```

## example

```json
{
  "type": "scaffold",
  "appBar": {
    "type": "appBar",
    "title": {
      "type": "text",
      "data": "Text Field",
      "style": {
        "color": "#ffffff",
        "fontSize": 21
      }
    },
    "backgroundColor": "#4D00E9"
  },
  "backgroundColor": "#ffffff",
  "body": {
    "type": "singleChildScrollView",
    "child": {
      "type": "container",
      "padding": {
        "left": 12,
        "right": 12,
        "top": 12,
        "bottom": 12
      },
      "child": {
        "type": "column",
        "mainAxisAlignment": "center",
        "crossAxisAlignment": "center",
        "children": [
          {
            "type": "sizedBox",
            "height": 24
          },
          {
            "type": "textField",
            "maxLines": 1,
            "keyboardType": "text",
            "textInputAction": "done",
            "textAlign": "start",
            "textCapitalization": "none",
            "textDirection": "ltr",
            "textAlignVertical": "top",
            "obscureText": false,
            "cursorColor": "#FC3F1B",
            "style": {
              "color": "#000000"
            },
            "decoration": {
              "hintText": "Your email address",
              "filled": true,
              "icon": {
                "type": "icon",
                "iconType": "material",
                "icon": "email",
                "size": 24
              },
              "hintStyle": {
                "color": "#797979"
              },
              "labelText": "Email",
              "fillColor": "#F2F2F2"
            },
            "readOnly": false,
            "enabled": true
          },
          {
            "type": "sizedBox",
            "height": 48
          },
          {
            "type": "elevatedButton",
            "child": {
              "type": "text",
              "data": "Login"
            },
            "style": {
              "backgroundColor": "#4D00E9",
              "padding": {
                "top": 8,
                "left": 12,
                "right": 12,
                "bottom": 8
              }
            },
            "onPressed": {
              "actionType": "navigate",
              "request": {
                "url": "https://mirai-example-default-rtdb.firebaseio.com/screens/bottom_nav.json"
              }
            }
          }
        ]
      }
    }
  }
}
```