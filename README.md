# Auto App Translate
It is a library that translates apps into 80 languages and automates settings.
![](https://user-images.githubusercontent.com/21379657/205305607-951f2eb9-700a-418d-a276-2927e158e9c8.jpg)

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
    - assets/localization.done.csv
```

### 2. Create the asset folder and insert the localization.csv file.
![](https://user-images.githubusercontent.com/21379657/205302098-b05eaa27-3357-4aa1-8ee6-aa1cd8fde92c.png)
<br>
lozalization.csv file [download](https://github.com/melodysdreamj/auto_app_translate/files/10141449/localization.csv)


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
        path: 'assets/localization.done.csv', 
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
Fill in str for the key value and the standard language (start translate language) column.
![](https://user-images.githubusercontent.com/21379657/205302110-bc47084e-dc24-4a6e-b9f6-2fed460de511.png)


### 5. Translate tr()
![](https://user-images.githubusercontent.com/21379657/205302122-601141a6-bee3-42cd-bd23-e4dcc85f8138.png)
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
    startLanguageCode: 'en',
    
    // language code to skip translation
    skipLanguageCodes: [],
    
    // str to skip translation
    skipStr: [],
    
    // csv file path
    appAssetsCsvPath: 'assets/localization.done.csv',
    
    // google translate api key (https://translatepress.com/docs/automatic-translation/generate-google-api-key/)
    apiKey: 'INPUT_YOUR_GOOGLE_TRANSLATE_API_KEY');
}
```
It works even if you don't put the Google Translate api key, but you will soon reach the free limit.<br>
For a guide to getting the Google Translate api key, please refer to [this document](https://translatepress.com/docs/automatic-translation/generate-google-api-key/).

### 7. Run the file. The translation will be completed in the csv file.
![](https://user-images.githubusercontent.com/21379657/205302139-b8c667f7-1dd6-446d-bfab-048633935b92.png)

### 8. Check out apps translated into more than 80 languages :)


