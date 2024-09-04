import 'dart:async';
import 'dart:developer';

import 'package:dating_app/app/core/domain/all_blocs.dart';

import '../../../../localization/localization.dart';
import '../../core.dart';
import '../../logger/app_logger.dart';

Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await runZonedGuarded(
    () async {
      runApp(
        initializeLocation(
          child: MultiBlocProvider(
            providers: AppBlocProviders.allBlocProviders,
            child: await builder(),
          ),
        ),
      );
    },
    (error, stackTrace) => Log.debug(error.toString(), [stackTrace]),
  );
}
