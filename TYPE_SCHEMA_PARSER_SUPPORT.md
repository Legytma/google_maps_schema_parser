# List of Type Schema Parsers Supported

The implemented parsers are listed in two tables: [Widgets Parsers](#widgets-parsers "Widgets Parsers") and [Other Objects Parsers](#other-objects-parsers "Other Objects Parsers").
Both tables show:
* In the Parser column, the name of the implemented parser class;
* In the Schema Documentation column, the name of the object, with the link to the JSON schema documentation;
* In the Schema ID column, the URL of the schema.

The documentation of all the schemes used in this version is available at [https://schema.legytma.com.br/2.0.0/docs](https://schema.legytma.com.br/2.0.0/docs "https://schema.legytma.com.br/2.0.0/docs"). The documentation for all versions of the schemes can be accessed through the link [https://schema.legytma.com.br](https://schema.legytma.com.br "https://schema.legytma.com.br").

## Widgets Parsers

Parser | Schema Documentation | Schema ID
--- | --- | ---
[GoogleMapSchemaWidgetParser](lib/parser/google_map_schema_widget_parser.dart "GoogleMapSchemaWidgetParser") | [`GoogleMap`](https://schema.legytma.com.br/2.0.0/docs/google_map.html "GoogleMap") | [`https://schema.legytma.com.br/2.0.0/schema/widget/google_map.schema.json`](https://schema.legytma.com.br/2.0.0/schema/widget/google_map.schema.json "https://schema.legytma.com.br/2.0.0/schema/widget/google_map.schema.json")

## Other Objects Parsers

Parser | Schema Documentation | Schema ID
--- | --- | ---
[CameraPositionSchemaParser](lib/parser/type/camera_position_schema_parser.dart "CameraPositionSchemaParser") | [`CameraPosition`](https://schema.legytma.com.br/2.0.0/schema/camera_position.schema.json "CameraPosition") | [`https://schema.legytma.com.br/2.0.0/schema/camera_position.schema.json`](https://schema.legytma.com.br/2.0.0/schema/camera_position.schema.json "https://schema.legytma.com.br/2.0.0/schema/camera_position.schema.json")
[LatLngSchemaParser](lib/parser/type/lat_lng_schema_parser.dart "LatLngSchemaParser") | [`LatLng`](https://schema.legytma.com.br/2.0.0/schema/lat_lng.schema.json "LatLng") | [`https://schema.legytma.com.br/2.0.0/schema/lat_lng.schema.json`](https://schema.legytma.com.br/2.0.0/schema/lat_lng.schema.json "https://schema.legytma.com.br/2.0.0/schema/lat_lng.schema.json")
[MapTypeSchemaParser](lib/parser/type/map_type_schema_parser.dart "MapTypeSchemaParser") | [`MapType`](https://schema.legytma.com.br/2.0.0/schema/map_type.schema.json "MapType") | [`https://schema.legytma.com.br/2.0.0/schema/map_type.schema.json`](https://schema.legytma.com.br/2.0.0/schema/map_type.schema.json "https://schema.legytma.com.br/2.0.0/schema/map_type.schema.json")
