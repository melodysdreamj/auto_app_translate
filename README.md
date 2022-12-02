# Auto App Translate
It is a library that translates apps into 80 languages and automates settings.

[!["Buy Me A Coffee"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/melodysdren)

## How to Use?
### 1. Setup the config file
```yaml
dependencies:
  easy_localization: ^3.0.2-dev
  easy_localization_loader: ^1.0.0
  app_auto_translation: ^0.0.1
  
flutter:
  assets:
    - assets/localization.csv
```

### 2. Create the asset folder and insert the localization.csv file.
![](https://user-images.githubusercontent.com/21379657/205231466-5e0ae6f5-c7a0-4ce7-a24b-e9e07110bed8.png)
<br>
lozalization.csv file [download](https://github.com/melodysdreamj/app_auto_translation/files/10138723/localization.csv)


### 3. Config easy_localization library. Please refer to the [official documentation](https://pub.dev/packages/easy_localization).
```dart
import 'package:app_auto_translation/callable/core_my/my_language_code/entity/flutter_support_language_locale.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_localization_loader/easy_localization_loader.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: flutterLocalizeSupportLanguagesLocale,
        path: 'assets/localization.csv', 
        assetLoader: CsvAssetLoader(), // <- important option for translation
        fallbackLocale: const Locale('en', 'US'),
        child: const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            localizationsDelegates: context.localizationDelegates,
            supportedLocales: context.supportedLocales,
            locale: context.locale,
            home: MyHomePage()
    );
  }
}
```

### 4. Fill in the localization file. 
Fill in str for the key value and the standard language (start translate language) column.<br/>
![](https://user-images.githubusercontent.com/21379657/205232336-b6d8c138-50e9-4af7-8f1d-19f312473097.png)


### 5. Translate tr()
![](https://user-images.githubusercontent.com/21379657/205235871-075593cc-f233-46b2-a77c-f21335dcc2cf.png)
```dart
import 'package:easy_localization/easy_localization.dart';

tr('hello world')
```



### 6. Create a dart file in your project and paste the code below. 
Location doesn't matter.
```dart
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
```
It works even if you don't put the Google Translate api key, but you will soon reach the free limit.<br>
For a guide to getting the Google Translate api key, please refer to [this document](https://translatepress.com/docs/automatic-translation/generate-google-api-key/).

### 7. Run the file. The translation will be completed in the csv file.
![](https://user-images.githubusercontent.com/21379657/205233138-7a4a2492-43ab-4b71-aa82-ff1598ae189f.png)

### 8. Check out your app translated into dozens of languages :)




