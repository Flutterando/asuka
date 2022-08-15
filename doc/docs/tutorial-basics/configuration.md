---
sidebar_position: 2
---

# Configuration

Before start using it, add this to your **MaterialApp**

```
lib/main.dart
```
```
import 'package:asuka/asuka.dart' as asuka;

MaterialApp(
    builder: asuka.builder,
    navigatorObservers: [
       asuka.asukaHeroController //if u don`t add this Hero will not work
    ],
);
```
With the configuration complete, you're ready to start using asuka.
