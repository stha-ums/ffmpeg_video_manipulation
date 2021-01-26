import 'dart:ui';

import 'package:flutter/widgets.dart';


/// all the supported colors in DrawText
@immutable
class DrawTextColor {
  // ignore: non_constant_identifier_names
  static Color get AliceBlue => Color(0xF0F8FF);
// ignore: non_constant_identifier_names
  static Color get AntiqueWhite => Color(0xFAEBD7);
// ignore: non_constant_identifier_names
  static Color get Aqua => Color(0x00FFFF);
// ignore: non_constant_identifier_names
  static Color get Aquamarine => Color(0x7FFFD4);
// ignore: non_constant_identifier_names
  static Color get Azure => Color(0xF0FFFF);
// ignore: non_constant_identifier_names
  static Color get Beige => Color(0xF5F5DC);
// ignore: non_constant_identifier_names
  static Color get Bisque => Color(0xFFE4C4);
// ignore: non_constant_identifier_names
  static Color get Black => Color(0x000000);
// ignore: non_constant_identifier_names
  static Color get BlanchedAlmond => Color(0xFFEBCD);
// ignore: non_constant_identifier_names
  static Color get Blue => Color(0x0000FF);
// ignore: non_constant_identifier_names
  static Color get BlueViolet => Color(0x8A2BE2);
// ignore: non_constant_identifier_names
  static Color get Brown => Color(0xA52A2A);
// ignore: non_constant_identifier_names
  static Color get BurlyWood => Color(0xDEB887);
// ignore: non_constant_identifier_names
  static Color get CadetBlue => Color(0x5F9EA0);
// ignore: non_constant_identifier_names
  static Color get Chartreuse => Color(0x7FFF00);
// ignore: non_constant_identifier_names
  static Color get Chocolate => Color(0xD2691E);
// ignore: non_constant_identifier_names
  static Color get Coral => Color(0xFF7F50);
// ignore: non_constant_identifier_names
  static Color get CornflowerBlue => Color(0x6495ED);
// ignore: non_constant_identifier_names
  static Color get Cornsilk => Color(0xFFF8DC);
// ignore: non_constant_identifier_names
  static Color get Crimson => Color(0xDC143C);
// ignore: non_constant_identifier_names
  static Color get Cyan => Color(0x00FFFF);
// ignore: non_constant_identifier_names
  static Color get DarkBlue => Color(0x00008B);
// ignore: non_constant_identifier_names
  static Color get DarkCyan => Color(0x008B8B);
// ignore: non_constant_identifier_names
  static Color get DarkGoldenRod => Color(0xB8860B);
// ignore: non_constant_identifier_names
  static Color get DarkGray => Color(0xA9A9A9);
// ignore: non_constant_identifier_names
  static Color get DarkGreen => Color(0x006400);
// ignore: non_constant_identifier_names
  static Color get DarkKhaki => Color(0xBDB76B);
// ignore: non_constant_identifier_names
  static Color get DarkMagenta => Color(0x8B008B);
// ignore: non_constant_identifier_names
  static Color get DarkOliveGreen => Color(0x556B2F);
// ignore: non_constant_identifier_names
  static Color get Darkorange => Color(0xFF8C00);
// ignore: non_constant_identifier_names
  static Color get DarkOrchid => Color(0x9932CC);
// ignore: non_constant_identifier_names
  static Color get DarkRed => Color(0x8B0000);
// ignore: non_constant_identifier_names
  static Color get DarkSalmon => Color(0xE9967A);
// ignore: non_constant_identifier_names
  static Color get DarkSeaGreen => Color(0x8FBC8F);
// ignore: non_constant_identifier_names
  static Color get DarkSlateBlue => Color(0x483D8B);
// ignore: non_constant_identifier_names
  static Color get DarkSlateGray => Color(0x2F4F4F);
// ignore: non_constant_identifier_names
  static Color get DarkTurquoise => Color(0x00CED1);
// ignore: non_constant_identifier_names
  static Color get DarkViolet => Color(0x9400D3);
// ignore: non_constant_identifier_names
  static Color get DeepPink => Color(0xFF1493);
// ignore: non_constant_identifier_names
  static Color get DeepSkyBlue => Color(0x00BFFF);
// ignore: non_constant_identifier_names
  static Color get DimGray => Color(0x696969);
// ignore: non_constant_identifier_names
  static Color get DodgerBlue => Color(0x1E90FF);
// ignore: non_constant_identifier_names
  static Color get FireBrick => Color(0xB22222);
// ignore: non_constant_identifier_names
  static Color get FloralWhite => Color(0xFFFAF0);
// ignore: non_constant_identifier_names
  static Color get ForestGreen => Color(0x228B22);
// ignore: non_constant_identifier_names
  static Color get Fuchsia => Color(0xFF00FF);
// ignore: non_constant_identifier_names
  static Color get Gainsboro => Color(0xDCDCDC);
// ignore: non_constant_identifier_names
  static Color get GhostWhite => Color(0xF8F8FF);
// ignore: non_constant_identifier_names
  static Color get Gold => Color(0xFFD700);
// ignore: non_constant_identifier_names
  static Color get GoldenRod => Color(0xDAA520);
// ignore: non_constant_identifier_names
  static Color get Gray => Color(0x808080);
// ignore: non_constant_identifier_names
  static Color get Green => Color(0x008000);
// ignore: non_constant_identifier_names
  static Color get GreenYellow => Color(0xADFF2F);
// ignore: non_constant_identifier_names
  static Color get HoneyDew => Color(0xF0FFF0);
// ignore: non_constant_identifier_names
  static Color get HotPink => Color(0xFF69B4);
// ignore: non_constant_identifier_names
  static Color get IndianRed => Color(0xCD5C5C);
// ignore: non_constant_identifier_names
  static Color get Indigo => Color(0x4B0082);
// ignore: non_constant_identifier_names
  static Color get Ivory => Color(0xFFFFF0);
// ignore: non_constant_identifier_names
  static Color get Khaki => Color(0xF0E68C);
// ignore: non_constant_identifier_names
  static Color get Lavender => Color(0xE6E6FA);
// ignore: non_constant_identifier_names
  static Color get LavenderBlush => Color(0xFFF0F5);
// ignore: non_constant_identifier_names
  static Color get LawnGreen => Color(0x7CFC00);
// ignore: non_constant_identifier_names
  static Color get LemonChiffon => Color(0xFFFACD);
// ignore: non_constant_identifier_names
  static Color get LightBlue => Color(0xADD8E6);
// ignore: non_constant_identifier_names
  static Color get LightCoral => Color(0xF08080);
// ignore: non_constant_identifier_names
  static Color get LightCyan => Color(0xE0FFFF);
// ignore: non_constant_identifier_names
  static Color get LightGoldenRodYellow => Color(0xFAFAD2);
// ignore: non_constant_identifier_names
  static Color get LightGreen => Color(0x90EE90);
// ignore: non_constant_identifier_names
  static Color get LightGrey => Color(0xD3D3D3);
// ignore: non_constant_identifier_names
  static Color get LightPink => Color(0xFFB6C1);
// ignore: non_constant_identifier_names
  static Color get LightSalmon => Color(0xFFA07A);
// ignore: non_constant_identifier_names
  static Color get LightSeaGreen => Color(0x20B2AA);
// ignore: non_constant_identifier_names
  static Color get LightSkyBlue => Color(0x87CEFA);
// ignore: non_constant_identifier_names
  static Color get LightSlateGray => Color(0x778899);
// ignore: non_constant_identifier_names
  static Color get LightSteelBlue => Color(0xB0C4DE);
// ignore: non_constant_identifier_names
  static Color get LightYellow => Color(0xFFFFE0);
// ignore: non_constant_identifier_names
  static Color get Lime => Color(0x00FF00);
// ignore: non_constant_identifier_names
  static Color get LimeGreen => Color(0x32CD32);
// ignore: non_constant_identifier_names
  static Color get Linen => Color(0xFAF0E6);
// ignore: non_constant_identifier_names
  static Color get Magenta => Color(0xFF00FF);
// ignore: non_constant_identifier_names
  static Color get Maroon => Color(0x800000);
// ignore: non_constant_identifier_names
  static Color get MediumAquaMarine => Color(0x66CDAA);
// ignore: non_constant_identifier_names
  static Color get MediumBlue => Color(0x0000CD);
// ignore: non_constant_identifier_names
  static Color get MediumOrchid => Color(0xBA55D3);
// ignore: non_constant_identifier_names
  static Color get MediumPurple => Color(0x9370D8);
// ignore: non_constant_identifier_names
  static Color get MediumSeaGreen => Color(0x3CB371);
// ignore: non_constant_identifier_names
  static Color get MediumSlateBlue => Color(0x7B68EE);
// ignore: non_constant_identifier_names
  static Color get MediumSpringGreen => Color(0x00FA9A);
// ignore: non_constant_identifier_names
  static Color get MediumTurquoise => Color(0x48D1CC);
// ignore: non_constant_identifier_names
  static Color get MediumVioletRed => Color(0xC71585);
// ignore: non_constant_identifier_names
  static Color get MidnightBlue => Color(0x191970);
// ignore: non_constant_identifier_names
  static Color get MintCream => Color(0xF5FFFA);
// ignore: non_constant_identifier_names
  static Color get MistyRose => Color(0xFFE4E1);
// ignore: non_constant_identifier_names
  static Color get Moccasin => Color(0xFFE4B5);
// ignore: non_constant_identifier_names
  static Color get NavajoWhite => Color(0xFFDEAD);
// ignore: non_constant_identifier_names
  static Color get Navy => Color(0x000080);
// ignore: non_constant_identifier_names
  static Color get OldLace => Color(0xFDF5E6);
// ignore: non_constant_identifier_names
  static Color get Olive => Color(0x808000);
// ignore: non_constant_identifier_names
  static Color get OliveDrab => Color(0x6B8E23);
// ignore: non_constant_identifier_names
  static Color get Orange => Color(0xFFA500);
// ignore: non_constant_identifier_names
  static Color get OrangeRed => Color(0xFF4500);
// ignore: non_constant_identifier_names
  static Color get Orchid => Color(0xDA70D6);
// ignore: non_constant_identifier_names
  static Color get PaleGoldenRod => Color(0xEEE8AA);
// ignore: non_constant_identifier_names
  static Color get PaleGreen => Color(0x98FB98);
// ignore: non_constant_identifier_names
  static Color get PaleTurquoise => Color(0xAFEEEE);
// ignore: non_constant_identifier_names
  static Color get PaleVioletRed => Color(0xD87093);
// ignore: non_constant_identifier_names
  static Color get PapayaWhip => Color(0xFFEFD5);
// ignore: non_constant_identifier_names
  static Color get PeachPuff => Color(0xFFDAB9);
// ignore: non_constant_identifier_names
  static Color get Peru => Color(0xCD853F);
// ignore: non_constant_identifier_names
  static Color get Pink => Color(0xFFC0CB);
// ignore: non_constant_identifier_names
  static Color get Plum => Color(0xDDA0DD);
// ignore: non_constant_identifier_names
  static Color get PowderBlue => Color(0xB0E0E6);
// ignore: non_constant_identifier_names
  static Color get Purple => Color(0x800080);
// ignore: non_constant_identifier_names
  static Color get Red => Color(0xFF0000);
// ignore: non_constant_identifier_names
  static Color get RosyBrown => Color(0xBC8F8F);
// ignore: non_constant_identifier_names
  static Color get RoyalBlue => Color(0x4169E1);
// ignore: non_constant_identifier_names
  static Color get SaddleBrown => Color(0x8B4513);
// ignore: non_constant_identifier_names
  static Color get Salmon => Color(0xFA8072);
// ignore: non_constant_identifier_names
  static Color get SandyBrown => Color(0xF4A460);
// ignore: non_constant_identifier_names
  static Color get SeaGreen => Color(0x2E8B57);
// ignore: non_constant_identifier_names
  static Color get SeaShell => Color(0xFFF5EE);
// ignore: non_constant_identifier_names
  static Color get Sienna => Color(0xA0522D);
// ignore: non_constant_identifier_names
  static Color get Silver => Color(0xC0C0C0);
// ignore: non_constant_identifier_names
  static Color get SkyBlue => Color(0x87CEEB);
// ignore: non_constant_identifier_names
  static Color get SlateBlue => Color(0x6A5ACD);
// ignore: non_constant_identifier_names
  static Color get SlateGray => Color(0x708090);
// ignore: non_constant_identifier_names
  static Color get Snow => Color(0xFFFAFA);
// ignore: non_constant_identifier_names
  static Color get SpringGreen => Color(0x00FF7F);
// ignore: non_constant_identifier_names
  static Color get SteelBlue => Color(0x4682B4);
// ignore: non_constant_identifier_names
  static Color get Tan => Color(0xD2B48C);
// ignore: non_constant_identifier_names
  static Color get Teal => Color(0x008080);
// ignore: non_constant_identifier_names
  static Color get Thistle => Color(0xD8BFD8);
// ignore: non_constant_identifier_names
  static Color get Tomato => Color(0xFF6347);
// ignore: non_constant_identifier_names
  static Color get Turquoise => Color(0x40E0D0);
// ignore: non_constant_identifier_names
  static Color get Violet => Color(0xEE82EE);
// ignore: non_constant_identifier_names
  static Color get Wheat => Color(0xF5DEB3);
// ignore: non_constant_identifier_names
  static Color get White => Color(0xFFFFFF);
// ignore: non_constant_identifier_names
  static Color get WhiteSmoke => Color(0xF5F5F5);
// ignore: non_constant_identifier_names
  static Color get Yellow => Color(0xFFFF00);
// ignore: non_constant_identifier_names
  static Color get YellowGreen => Color(0x9ACD32);
// ignore: non_constant_identifier_names

  static getColorString(Color selectedColor) {
    switch (int.tryParse(selectedColor.toString())) {
      case (0xF0F8FF):
        return "AliceBlue";

      case (0xFAEBD7):
        return "AntiqueWhite";

      case (0x00FFFF):
        return "Aqua";

      case (0x7FFFD4):
        return "Aquamarine";

      case (0xF0FFFF):
        return "Azure";

      case (0xF5F5DC):
        return "Beige";

      case (0xFFE4C4):
        return "Bisque";

      case (0x000000):
        return "Black";

      case (0xFFEBCD):
        return "BlanchedAlmond";

      case (0x0000FF):
        return "Blue";

      case (0x8A2BE2):
        return "BlueViolet";

      case (0xA52A2A):
        return "Brown";

      case (0xDEB887):
        return "BurlyWood";

      case (0x5F9EA0):
        return "CadetBlue";

      case (0x7FFF00):
        return "Chartreuse";

      case (0xD2691E):
        return "Chocolate";

      case (0xFF7F50):
        return "Coral";

      case (0x6495ED):
        return "CornflowerBlue";

      case (0xFFF8DC):
        return "Cornsilk";

      case (0xDC143C):
        return "Crimson";

      case (0x00FFFF):
        return "Cyan";

      case (0x00008B):
        return "DarkBlue";

      case (0x008B8B):
        return "DarkCyan";

      case (0xB8860B):
        return "DarkGoldenRod";

      case (0xA9A9A9):
        return "DarkGray";

      case (0x006400):
        return "DarkGreen";

      case (0xBDB76B):
        return "DarkKhaki";

      case (0x8B008B):
        return "DarkMagenta";

      case (0x556B2F):
        return "DarkOliveGreen";

      case (0xFF8C00):
        return "Darkorange";

      case (0x9932CC):
        return "DarkOrchid";

      case (0x8B0000):
        return "DarkRed";

      case (0xE9967A):
        return "DarkSalmon";

      case (0x8FBC8F):
        return "DarkSeaGreen";

      case (0x483D8B):
        return "DarkSlateBlue";

      case (0x2F4F4F):
        return "DarkSlateGray";

      case (0x00CED1):
        return "DarkTurquoise";

      case (0x9400D3):
        return "DarkViolet";

      case (0xFF1493):
        return "DeepPink";

      case (0x00BFFF):
        return "DeepSkyBlue";

      case (0x696969):
        return "DimGray";

      case (0x1E90FF):
        return "DodgerBlue";

      case (0xB22222):
        return "FireBrick";

      case (0xFFFAF0):
        return "FloralWhite";

      case (0x228B22):
        return "ForestGreen";

      case (0xFF00FF):
        return "Fuchsia";

      case (0xDCDCDC):
        return "Gainsboro";

      case (0xF8F8FF):
        return "GhostWhite";

      case (0xFFD700):
        return "Gold";

      case (0xDAA520):
        return "GoldenRod";

      case (0x808080):
        return "Gray";

      case (0x008000):
        return "Green";

      case (0xADFF2F):
        return "GreenYellow";

      case (0xF0FFF0):
        return "HoneyDew";

      case (0xFF69B4):
        return "HotPink";

      case (0xCD5C5C):
        return "IndianRed";

      case (0x4B0082):
        return "Indigo";

      case (0xFFFFF0):
        return "Ivory";

      case (0xF0E68C):
        return "Khaki";

      case (0xE6E6FA):
        return "Lavender";

      case (0xFFF0F5):
        return "LavenderBlush";

      case (0x7CFC00):
        return "LawnGreen";

      case (0xFFFACD):
        return "LemonChiffon";

      case (0xADD8E6):
        return "LightBlue";

      case (0xF08080):
        return "LightCoral";

      case (0xE0FFFF):
        return "LightCyan";

      case (0xFAFAD2):
        return "LightGoldenRodYellow";

      case (0x90EE90):
        return "LightGreen";

      case (0xD3D3D3):
        return "LightGrey";

      case (0xFFB6C1):
        return "LightPink";

      case (0xFFA07A):
        return "LightSalmon";

      case (0x20B2AA):
        return "LightSeaGreen";

      case (0x87CEFA):
        return "LightSkyBlue";

      case (0x778899):
        return "LightSlateGray";

      case (0xB0C4DE):
        return "LightSteelBlue";

      case (0xFFFFE0):
        return "LightYellow";

      case (0x00FF00):
        return "Lime";

      case (0x32CD32):
        return "LimeGreen";

      case (0xFAF0E6):
        return "Linen";

      case (0xFF00FF):
        return "Magenta";

      case (0x800000):
        return "Maroon";

      case (0x66CDAA):
        return "MediumAquaMarine";

      case (0x0000CD):
        return "MediumBlue";

      case (0xBA55D3):
        return "MediumOrchid";

      case (0x9370D8):
        return "MediumPurple";

      case (0x3CB371):
        return "MediumSeaGreen";

      case (0x7B68EE):
        return "MediumSlateBlue";

      case (0x00FA9A):
        return "MediumSpringGreen";

      case (0x48D1CC):
        return "MediumTurquoise";

      case (0xC71585):
        return "MediumVioletRed";

      case (0x191970):
        return "MidnightBlue";

      case (0xF5FFFA):
        return "MintCream";

      case (0xFFE4E1):
        return "MistyRose";

      case (0xFFE4B5):
        return "Moccasin";

      case (0xFFDEAD):
        return "NavajoWhite";

      case (0x000080):
        return "Navy";

      case (0xFDF5E6):
        return "OldLace";

      case (0x808000):
        return "Olive";

      case (0x6B8E23):
        return "OliveDrab";

      case (0xFFA500):
        return "Orange";

      case (0xFF4500):
        return "OrangeRed";

      case (0xDA70D6):
        return "Orchid";

      case (0xEEE8AA):
        return "PaleGoldenRod";

      case (0x98FB98):
        return "PaleGreen";

      case (0xAFEEEE):
        return "PaleTurquoise";

      case (0xD87093):
        return "PaleVioletRed";

      case (0xFFEFD5):
        return "PapayaWhip";

      case (0xFFDAB9):
        return "PeachPuff";

      case (0xCD853F):
        return "Peru";

      case (0xFFC0CB):
        return "Pink";

      case (0xDDA0DD):
        return "Plum";

      case (0xB0E0E6):
        return "PowderBlue";

      case (0x800080):
        return "Purple";

      case (0xFF0000):
        return "Red";

      case (0xBC8F8F):
        return "RosyBrown";

      case (0x4169E1):
        return "RoyalBlue";

      case (0x8B4513):
        return "SaddleBrown";

      case (0xFA8072):
        return "Salmon";

      case (0xF4A460):
        return "SandyBrown";

      case (0x2E8B57):
        return "SeaGreen";

      case (0xFFF5EE):
        return "SeaShell";

      case (0xA0522D):
        return "Sienna";

      case (0xC0C0C0):
        return "Silver";

      case (0x87CEEB):
        return "SkyBlue";

      case (0x6A5ACD):
        return "SlateBlue";

      case (0x708090):
        return "SlateGray";

      case (0xFFFAFA):
        return "Snow";

      case (0x00FF7F):
        return "SpringGreen";

      case (0x4682B4):
        return "SteelBlue";

      case (0xD2B48C):
        return "Tan";

      case (0x008080):
        return "Teal";

      case (0xD8BFD8):
        return "Thistle";

      case (0xFF6347):
        return "Tomato";

      case (0x40E0D0):
        return "Turquoise";

      case (0xEE82EE):
        return "Violet";

      case (0xF5DEB3):
        return "Wheat";

      case (0xFFFFFF):
        return "White";

      case (0xF5F5F5):
        return "WhiteSmoke";

      case (0xFFFF00):
        return "Yellow";

      case (0x9ACD32):
        return "YellowGreen";
      default:
        return "White";
    }
  }
}
