import 'package:dating_app/app/core/config/injection_container.dart';
import 'package:dating_app/app/core/core.dart';
import 'package:dating_app/bloc_observers.dart';
import 'package:dating_app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';

import 'app/core/domain/all_blocs.dart';
import 'app/core/domain/sparkz_config.dart';
import 'localization/localization.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await EasyLocalization.ensureInitialized();

  Bloc.observer = AppBlocObserver();
  await setUpServiceLocator();
  runApp(
    initializeLocation(
      child: MultiBlocProvider(
        providers: AppBlocProviders.allBlocProviders,
        child: const SparkzConfig(),
      ),
    ),
  );
}
