// Copyright 2024. Use of this source code is governed by the LICENSE.

import 'package:salt_n_pepa/salt_n_pepa.dart';
import 'package:uuid/enums.dart'; // used for the last usage demo

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
