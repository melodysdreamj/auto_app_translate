library app_auto_translation;
import 'callable/core_my/my_translate_app_assets_csv/spell.dart';

class AutoAppTranslate {

  static translateAppCsvFile({
    String? startLanguageCode,
    List<String>? skipLanguageCodes,
    List<String>? skipStr,
    String? appAssetsCsvPath,
    required String apiKey,
  }) {
    MyTranslateAppAssetsCsvSpell()(
      startLanguageCode: startLanguageCode,
      skipLanguageCodes: skipLanguageCodes,
      skipStr: skipStr,
      appAssetsCsvPath: appAssetsCsvPath,
      apiKey: apiKey,
    );
  }
}