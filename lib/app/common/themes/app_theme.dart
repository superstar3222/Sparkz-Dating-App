import '../../core/core.dart';
import '../constants/app_style.dart';

class AppThemes {
  static final AppThemes _instance = AppThemes._();

  factory AppThemes() => _instance;
  AppThemes._();

  final theme = ThemeData.light().copyWith(
      textTheme: TextTheme(
    titleLarge: AppTextStyle.titleLarge,
    titleMedium: AppTextStyle.titleMedium,
    titleSmall: AppTextStyle.titleSmall,
    bodyLarge: AppTextStyle.bodyLarge,
    bodyMedium: AppTextStyle.bodyMedium,
    bodySmall: AppTextStyle.bodySmall,
  ));
}
