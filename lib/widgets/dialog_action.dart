import 'package:flutter/material.dart';

class DialogAction extends StatelessWidget {
  const DialogAction({
    super.key,
    required this.icon,
    required this.onPressed,
  });

  final Widget icon;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    const size = Size(40, 40);
    return Padding(
      padding: const EdgeInsets.all(4),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          padding: EdgeInsets.zero,
          minimumSize: size,
          backgroundColor: Theme
              .of(context)
              .colorScheme
              .background,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
        ),
        onPressed: onPressed,
        child: Container(
          width: size.width,
          height: size.height,
          padding: const EdgeInsets.all(8),
          child: icon,
        ),
      ),
    );
  }
}
