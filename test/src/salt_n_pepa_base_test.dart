// Copyright 2024. Use of this source code is governed by the LICENSE.

import 'package:salt_n_pepa/salt_n_pepa.dart';
import 'package:test/test.dart';
import 'package:uuid/uuid.dart';

void main() {
  test('salt n pepa base tests', () async {
    String value1 = Saltn('some salt').pepa('dataToAnonymize');
    expect(value1, 'b06c7f2d-d64e-513e-9915-4c54493371f4');

    String value2 = Saltn('salt').pepa('dataToAnonymize');
    expect(value2, '93a7615c-8be6-5b65-a7de-8147124fa7a9');

    String value3 = Saltn('').pepa('dataToAnonymize');
    expect(value3, 'b785f691-8a27-529e-beca-f2e8b69de6ce');

    String value4 = Saltn().pepa('dataToAnonymize');
    expect(value4, 'b785f691-8a27-529e-beca-f2e8b69de6ce');
    expect(value4, value3);

    String value5 = Saltn('some salt').pepa('dataToAnonymize2');
    expect(value5, '71b260e8-4458-547d-8c8e-eb493fa96488');

    String value6 = Saltn('', Namespace.x500).pepa('dataToAnonymize');
    expect(value6, '7ddd685e-bf3d-5dfe-9d8b-75e64f31f656');
  });
}
