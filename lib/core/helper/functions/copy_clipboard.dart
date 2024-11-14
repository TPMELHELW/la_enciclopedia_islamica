import 'package:flutter/services.dart';
import 'package:la_enciclopedia_islamica/core/services/easy_loader_service.dart';

Future<void> copyToClipboard(String text) async {
  await Clipboard.setData(ClipboardData(text: text));
  // EasyLoaderService.showToast(message: 'Copiado en el portapapeles');
}
