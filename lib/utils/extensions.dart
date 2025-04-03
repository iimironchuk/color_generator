import 'dart:ui';

///Extension to convert color to hex string
extension ColorToHexExtension on Color {
  ///Method to convert color to hex string
  String toHex() {
    final int a = (this.a * 255).toInt();
    final int r = (this.r * 255).toInt();
    final int g = (this.g * 255).toInt();
    final int b = (this.b * 255).toInt();

    final String hex =
        '#${a.toRadixString(16).padLeft(2, '0')}${r.toRadixString(16).padLeft(2, '0')}${g.toRadixString(16).padLeft(2, '0')}${b.toRadixString(16).padLeft(2, '0')}';

    return hex;
  }
}

///Extension to convert hex string to color
extension HexToColorExtension on String {
  ///Method to convert hex string to color
  Color toColor() {
    final String hex = replaceAll('#', '');

    // ignore: no_magic_number
    return Color(int.parse(hex, radix: 16));
  }
}
