// Copyright 2024. Use of this source code is governed by the LICENSE.

import 'package:uuid/uuid.dart';

class Saltn {
  Saltn([this.salt = '', this.namespace = Namespace.nil]);

  /// Use salt to anonymize data
  late final String salt;

  /// Set the Namespace for Uuid algorythm. Deafult value is [Namespace.nil].
  late final Namespace namespace;

  /// Returns UUID.v5 string based on string value to anonymize and string salt
  /// using namespace declared in the constructor.
  String pepa(String value) => Uuid().v5(namespace.value, '$salt$value');
}
