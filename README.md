<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/tools/pub/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/to/develop-packages). 
-->

One-way anonymization using UUID. Based on [uuid 4.5.1](https://pub.dev/packages/uuid)

## Features

Returns UUID based on given data (i.e. userId) for the purposes of anonymiztion. Supports custom salt.

## Getting started



## Usage

Add dependency:

```pubspec
dependencies:
  ...
  salt_n_pepa: 1.0.0
  ...
```

Import:

```dart
import 'package:salt_n_pepa/salt_n_pepa.dart';
```

Whole example from the `/example` folder:

```dart
import 'package:salt_n_pepa/salt_n_pepa.dart';
import 'package:uuid/enums.dart'; // last usage demo requires access to Namespace enum

void main() {
  // Use your salt to anonymize your data.
  print(Saltn('some salt').pepa('dataToAnonymize')); 
  // b06c7f2d-d64e-513e-9915-4c54493371f4

  // Different salt will cause different result. Keep your salt safe.
  print(Saltn('salt').pepa('dataToAnonymize')); 
  // 93a7615c-8be6-5b65-a7de-8147124fa7a9

  // You can use empty salt
  print(Saltn('').pepa('dataToAnonymize')); 
  // b785f691-8a27-529e-beca-f2e8b69de6ce

  // or use no salt at all and get the same result.
  print(Saltn().pepa('dataToAnonymize')); 
  // b785f691-8a27-529e-beca-f2e8b69de6ce

  // You can change the default [Namespace.nil].
  print(Saltn('', Namespace.x500).pepa('dataToAnonymize')); 
  // 7ddd685e-bf3d-5dfe-9d8b-75e64f31f656
}
```

## Additional information

Project hosted on [GitHub](https://github.com/miechoo/salt-n-pepa)
