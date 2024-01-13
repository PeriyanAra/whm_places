import 'package:whm_places/presentation/common/constants/assets_paths.dart';

enum LanguageCode {
  en,
  it,
  pt,
  es,
}

extension LanguageExtension on LanguageCode {
  String getIcon() {
    switch (this) {
      case LanguageCode.en:
        return AssetsPaths.enFlag;
      case LanguageCode.it:
        return AssetsPaths.itFlag;
      case LanguageCode.es:
        return AssetsPaths.esFlag;
      case LanguageCode.pt:
        return AssetsPaths.ptFlag;
    }
  }
}
