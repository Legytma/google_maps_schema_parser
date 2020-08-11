library google_maps_schema_parser;

import 'package:logging/logging.dart';

import 'schema_parser_initiator.g.dart';

/// A Calculator.
class GoogleMapsSchemaParser {
  static final Logger _log = Logger('GoogleMapsSchemaParser');

  // ignore: prefer_final_fields
  static bool _initialized = false;

  /// Register implemented parsers
  static void registerParsers() {
    if (!_initialized) {
      _initialized = true;

      try {
        schemaParserRegisterAllTypeParsers();
        // ignore: avoid_catches_without_on_clauses
      } catch (e) {
        _log.severe(e);
      }
    }
  }

  /// Do not create an instance...
  GoogleMapsSchemaParser() {
    throw Exception("Do not create instance of class SchemaWidget. All the"
        " methods are static.");
  }
}
