import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AppIcons {
  static Widget home({Color? color}) => svgFromAsset('home', color: color);

  static Widget search({Color? color}) => svgFromAsset('search', color: color);

  static Widget cart({Color? color}) => svgFromAsset('cart', color: color);

  static Widget account({Color? color}) =>
      svgFromAsset('account', color: color);

  static final Widget location = svgFromAsset('location');
  static final Widget arrow_back = svgFromAsset('arrow_back');
  static final Widget favorite = svgFromAsset('favorite');
  static final Widget close = svgFromAsset('close');
  static final Widget increase = svgFromAsset('increase');
  static final Widget decrease = svgFromAsset('decrease');

  static svgFromAsset(String name, {Color? color}) {
    return SvgPicture.asset(
      'assets/icons/$name.svg',
      // color: color,
      colorFilter: color != null
          ? ColorFilter.mode(
              color,
              BlendMode.srcIn,
            )
          : null,
      semanticsLabel: name,
    );
  }
}
