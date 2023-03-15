const kAssets = "assets";
const kAssetsImages = '$kAssets/images';
const kAssetsIcons = '$kAssets/icons';

enum Assets {
  // Images
  TODO("$kAssetsImages/todo.svg"),

  // Icons
  SCAN_MENU("$kAssetsIcons/scan.svg"),
  EXCLAMATION_MARK("$kAssetsIcons/exclamation_mark.svg");

  const Assets(this.file);
  final String file;
}
