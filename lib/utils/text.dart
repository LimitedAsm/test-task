import 'package:flutter/widgets.dart';

Size calculateTextSize({required String text, required BuildContext context}) {
  return (TextPainter(
          text: TextSpan(text: text, style: DefaultTextStyle.of(context).style),
          maxLines: 2,
          textScaleFactor: MediaQuery.of(context).textScaleFactor,
          textDirection: TextDirection.ltr)
        ..layout())
      .size;
}
