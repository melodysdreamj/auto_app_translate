class MyStoreInfo {

  /// 플레이스토어 정보
  String playStoreTitle = ""; //30자
  String playStoreShortDescription = ""; //80자
  String playStoreFullDescription = '''

'''; //4000자
  String playStoreStartLanguage = "en";
  bool translatePlayStoreName = true;

  /// 앱스토어 정보
  String appStoreTitle = ""; //30자
  String appStoreSubTitle = ""; //30자
  String appStringDescription = '''


'''; //4000자

  String appStoreKeywords = ""; //100자

  String appStoreStartLanguage = "en";
  bool translateAppStoreName = true;
  bool onlyFirstCharacterUpperAppName = true;

  String releaseNote = "fix small bug :)";

  ///스토어스크린샷 글자 정보 진행

  /// keyword.strings (안쓰는것)
  String screenshotTitle01 = "";
  String screenshotTitle02 = "";
  String screenshotTitle03 = "";
  String screenshotTitle04 = "";
  String screenshotTitle05 = "";

  /// title.strings (현재사용중)
  String screenshotSubTitle01 = "";
  String screenshotSubTitle02 = "";
  String screenshotSubTitle03 = "";
  String screenshotSubTitle04 = "";
  String screenshotSubTitle05 = "";

  String screenshotStartLanguageCode = "en";

  String homepageLink = ""; // 홈페이지 주소
  String policyPageLink = ""; // 개인정보 처리방침 주소

  MyStoreInfo({
    required this.playStoreTitle, //30자
    required this.playStoreShortDescription, //80자
    required this.playStoreFullDescription, //4000자

    required this.playStoreStartLanguage,
    required this.translatePlayStoreName,

    required this.appStoreTitle, //30자
    required this.appStoreSubTitle, //30자
    required this.appStringDescription, //4000자

    required this.appStoreKeywords, //100자

    required this.appStoreStartLanguage,
    required this.translateAppStoreName,
    required this.onlyFirstCharacterUpperAppName,

    required this.releaseNote,

    required this.screenshotTitle01,
    required this.screenshotTitle02,
    required this.screenshotTitle03,
    required this.screenshotTitle04,
    required this.screenshotTitle05,

    required this.screenshotSubTitle01,
    required this.screenshotSubTitle02,
    required this.screenshotSubTitle03,
    required this.screenshotSubTitle04,
    required this.screenshotSubTitle05,

    required this.screenshotStartLanguageCode,

    required this.homepageLink, // 홈페이지 주소
    required this.policyPageLink, // 개인정보 처리방침 주소


  });
}

main() {
  MyStoreInfo myStoreInfo = MyStoreInfo(
    playStoreTitle: "", // 플레이스토어 제목 30자 이내(번역시 타 언어는 더 늘어남)
    playStoreShortDescription: "",  // 플레이스토어 짧은 설명 80자 이내(번역시 타 언어는 더 늘어남)
    playStoreFullDescription: "",  // 플레이스토어 긴 설명 4000자 이내(번역시 타 언어는 더 늘어남)
    playStoreStartLanguage: "en",  // 플레이스토어 번역 시작 언어
    translatePlayStoreName: true, // 플레이스토어 제목 번역 여부
    appStoreTitle: "", // 앱스토어 제목 30자 이내(번역시 타 언어는 더 늘어남)
    appStoreSubTitle: "", // 앱스토어 부제목 30자 이내(번역시 타 언어는 더 늘어남)
    appStringDescription: "", // 앱스토어 설명 4000자 이내(번역시 타 언어는 더 늘어남)

    appStoreKeywords: "", // 앱스토어 키워드 100자 이내(번역시 타 언어는 더 늘어남) , 쉼표로 구분 SEO

    appStoreStartLanguage: "en", // 앱스토어 번역 시작 언어
    translateAppStoreName: true, // 앱스토어 제목 번역 여부
    onlyFirstCharacterUpperAppName: true, // 앱스토어 제목 첫글자만 대문자로 표시 할지 여부

    releaseNote: "fix small bug :)", // 앱스토어 업데이트 노트

    // 사용안함
    screenshotTitle01: "",
    screenshotTitle02: "",
    screenshotTitle03: "",
    screenshotTitle04: "",
    screenshotTitle05: "",

    // 사용중(스크린샷 상단 글자)
    screenshotSubTitle01: "",
    screenshotSubTitle02: "",
    screenshotSubTitle03: "",
    screenshotSubTitle04: "",
    screenshotSubTitle05: "",

    screenshotStartLanguageCode: "en", // 스크린샷 번역 시작 언어

    homepageLink: "", // 홈페이지 주소
    policyPageLink: "", // 개인정보 처리방침 주소

  );
}
