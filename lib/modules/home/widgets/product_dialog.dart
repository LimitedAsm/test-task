import 'package:flutter/material.dart';

class ProductDialog extends AlertDialog {
  const ProductDialog({super.key});

  static Future<void> show(BuildContext context) {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return const ProductDialog();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return const AlertDialog(
      title: Text('Диалог'),
    );
  }
}
