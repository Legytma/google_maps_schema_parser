// Copyright (c) 2020 Legytma Soluções Inteligentes (https://legytma.com.br).
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:json_schema/json_schema.dart';
import 'package:schema_widget/schema_widget.dart';

import 'parser/google_map_schema_widget_parser.dart';
import 'parser/type/camera_position_schema_parser.dart';
import 'parser/type/lat_lng_schema_parser.dart';
import 'parser/type/map_type_schema_parser.dart';

// **************************************************************************
// SchemaParserInitiatorBuilder
// **************************************************************************

/// Auto generated TypeSchemaParser initialization
void schemaParserRegisterAllTypeParsers() {
  SchemaWidget.registerTypeParserAsync(
    "GoogleMap",
    () async => GoogleMapSchemaWidgetParser(
      await JsonSchema.createSchemaFromUrl(
        "https://schema.legytma.com.br/2.0.0/schema/widget/google_map.schema.json",
      ),
    ),
  );

  SchemaWidget.registerTypeParserAsync(
    "CameraPosition",
    () async => CameraPositionSchemaParser(
      await JsonSchema.createSchemaFromUrl(
        "https://schema.legytma.com.br/2.0.0/schema/camera_position.schema.json",
      ),
    ),
  );

  SchemaWidget.registerTypeParserAsync(
    "LatLng",
    () async => LatLngSchemaParser(
      await JsonSchema.createSchemaFromUrl(
        "https://schema.legytma.com.br/2.0.0/schema/lat_lng.schema.json",
      ),
    ),
  );

  SchemaWidget.registerTypeParserAsync(
    "MapType",
    () async => MapTypeSchemaParser(
      await JsonSchema.createSchemaFromUrl(
        "https://schema.legytma.com.br/2.0.0/schema/map_type.schema.json",
      ),
    ),
  );
}
