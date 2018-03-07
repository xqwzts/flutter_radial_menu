[![pub package](https://img.shields.io/pub/v/flutter_radial_menu.svg)](https://pub.dartlang.org/packages/flutter_radial_menu) 

# flutter_radial_menu

A radial menu widget for Flutter.

![](screenshots/demo.gif).

## Installation

Install the latest version [from pub](https://pub.dartlang.org/packages/flutter_radial_menu#-installing-tab-).

## Quick Start

Import the package, create a `RadialMenu` and pass it your `RadialMenuItems`.

```dart
import 'package:flutter/material.dart';
import 'package:flutter_radial_menu/flutter_radial_menu.dart';

void main() {
  runApp(
    new MaterialApp(
      home: new Scaffold(
        body: new Center(
          child: new RadialMenu(
            items: <RadialMenuItem<int>>[
              const RadialMenuItem<int>(
                value: 1,
                child: const Icon(Icons.add),
              ),
              const RadialMenuItem<int>(
                value: -1,
                child: const Icon(Icons.remove),
              )
            ],
            radius: 100.0,
            onSelected: print,
          ),
        ),
      ),
    ),
  );
}
```

![](screenshots/simple_example.gif)

---

Take a look at the [demo](example/demo.dart) for a more elaborate example.
