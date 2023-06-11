//ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';

class AppIcons {
  const AppIcons();

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

  static Widget svgFromAsset(String name, {Color? color}) {
    ColorFilter? colorFilter;
    if (color != null) {
      colorFilter = ColorFilter.mode(
        color,
        BlendMode.srcIn,
      );
    }

    return SvgPicture.asset(
      'assets/icons/$name.svg',
      colorFilter: colorFilter,
      semanticsLabel: name,
    );
  }
}
