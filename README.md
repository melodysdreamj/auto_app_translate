## app_auto_translation

A auto translate app library that:

- catches programming errors at compile time rather than
  at runtime
- removes nesting for listening/combining objects
- ensures that the code is testable

## Getting started

### 1. setting your project pubspec.yaml

```yaml
dependencies:
  easy_localization: ^3.0.2-dev
  easy_localization_loader: ^1.0.0
  app_auto_translation: ^0.0.1
  
flutter:
  assets:
    - assets/localization.csv
```

### 3. if the assets folder does not exist, create it and download the following lozalization.csv files into it.
![](https://user-images.githubusercontent.com/21379657/205231466-5e0ae6f5-c7a0-4ce7-a24b-e9e07110bed8.png)
<br>
lozalization.csv file [download](https://github.com/melodysdreamj/app_auto_translation/files/10138723/localization.csv)


### 4. Apply the easy_localization library. Please refer to the [official documentation](https://pub.dev/packages/easy_localization).
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

### 5. Fill in the localization file. Fill in str for the key value and the standard language (start translate language) column.
![](https://user-images.githubusercontent.com/21379657/205232336-b6d8c138-50e9-4af7-8f1d-19f312473097.png)


### 6. Create the string you want to translate as follows.
![](https://user-images.githubusercontent.com/21379657/205235871-075593cc-f233-46b2-a77c-f21335dcc2cf.png)
```dart
import 'package:easy_localization/easy_localization.dart';

tr('hello world')
```



### 6. Create a dart file in your project and paste the code below. Location doesn't matter.
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




