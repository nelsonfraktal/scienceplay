import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _editIconFamily = 'EditIcon';
  static const String _lixeiraFamily = 'Lixeira';
  static const String _exiteditFamily = 'Exitedit';

  // EditIcon
  static const IconData kicon = IconData(0xe800, fontFamily: _editIconFamily);

  // Lixeira
  static const IconData ktrash1 = IconData(0xe801, fontFamily: _lixeiraFamily);

  // Exitedit
  static const IconData kexitedit =
      IconData(0xe800, fontFamily: _exiteditFamily);
}
