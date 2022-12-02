
import 'package:auto_app_translate/auto_app_translate.dart';

main() {
  AutoAppTranslate.translateAppCsvFile(
      // start translate language
      startLanguageCode: 'ko',

      // language code to skip translation
      skipLanguageCodes: [],

      // str to skip translation
      skipStr: [],

      // csv file path
      appAssetsCsvPath: 'assets/localization.csv',

      // google translate api key (https://translatepress.com/docs/automatic-translation/generate-google-api-key/)
      apiKey: 'INPUT_YOUR_GOOGLE_TRANSLATE_API_KEY');
}
