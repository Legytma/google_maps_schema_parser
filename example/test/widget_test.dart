// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:google_maps_schema_parser/google_maps_schema_parser.dart';
import 'package:schema_widget/schema_widget.dart';

import '../lib/main.dart'; // ignore: avoid_relative_lib_imports
import 'common.dart';

void main() {
  testWidgets('Counter increments smoke test', (tester) async {
    initLogger();
    SchemaWidget.registerParsers(localJsonSchemaResolver);
    GoogleMapsSchemaParser.registerParsers();

    await GetIt.I.allReady(ignorePendingAsyncCreation: false);

    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    expect(find.byElementType(GoogleMap), findsOneWidget);
  });
}
