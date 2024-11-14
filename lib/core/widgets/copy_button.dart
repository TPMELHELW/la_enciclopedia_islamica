import 'package:flutter/material.dart';
import 'package:la_enciclopedia_islamica/core/helper/functions/copy_clipboard.dart';

class CopyButton extends StatelessWidget {
  const CopyButton({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.copy_outlined),
      onPressed: () async {
        copyToClipboard(text);
      },
    );
  }
}
