/*
 * Copyright (c) 2020 Legytma Soluções Inteligentes (https://legytma.com.br).
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *       http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

import 'dart:convert';
import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_schema_parser/google_maps_schema_parser.dart';
import 'package:logging/logging.dart';
import 'package:schema_widget/schema_widget.dart';

import '../common.dart';

part 'type_schema_parser_test.g.dart';

final Logger _logger = Logger('type_schema_parser_test');

void main() {
  initLogger();

  SchemaWidget.registerParsers(localJsonSchemaResolver);

  GoogleMapsSchemaParser.registerParsers();

  runAllTypeSchemaParserTests();
}

void runTypeSchemaParserTests<T>() {
  final type = T;
  final fileId = "$type".replaceAll("<", "_").replaceAll(">", "_");
  final file = File("./test/parser/schema/$fileId.test.schema.json");
  final fileContent = file.readAsStringSync();
  final Map<String, dynamic> fileMap = json.decode(fileContent);
  final String groupDescription = fileMap['description'];
  final List<dynamic> testMaps = fileMap['tests'];

  group(groupDescription, () {
    for (final testMap in testMaps) {
      final String testDescription = testMap['description'];
      final testSchema = testMap['schema'];
      final bool testValid = testMap['valid'];

      test(testDescription, () {
        try {
          final object = SchemaWidget.parse<T>(null, testSchema);

          if (testValid) {
            expect(object != null, true, reason: "$type not created.");
            expect(object is T, true, reason: "Object is not $type");
          } else {
            expect(object == null && object is! T, true,
                reason: "Schema is expected to be invalid, but was not.");
          }
          // ignore: avoid_catches_without_on_clauses
        } catch (e, stack) {
          if (testValid) {
            _logger.severe("Fail on run '$testDescription':", e, stack);

            fail('Schema is expected to be valid, but was not.');
          } else {
            _logger.info(
                "Fail on run '$testDescription': ${e.runtimeType}", e, stack);
          }
        }
      });
    }
  });
}
