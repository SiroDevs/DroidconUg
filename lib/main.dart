import 'package:flutter/material.dart';

import 'app.dart';
import 'core/utils/app_util.dart';
import 'core/utils/env/flavor_config.dart';
import 'core/utils/env/environments.dart';
import 'core/di/injectable.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  FlavorConfig(
    flavor: Flavor.production,
    name: 'PROD',
    color: Colors.transparent,
    values: const FlavorValues(
      logNetworkInfo: false,
      showFullErrorMessages: false,
    ),
  );
  logger('Starting app from main.dart');
  await configureDependencies(Environments.production);

  runApp(const MyApp());
}
