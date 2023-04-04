import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String pythonStrokePath = 'logo/python_stroke.svg';
const String pythonColorPath = 'logo/python_color.svg';
final Widget pythonStroke = SvgPicture.asset(
  fit: BoxFit.contain,
  pythonStrokePath,
  semanticsLabel: 'Python Logo',
  color: const Color.fromARGB(255, 255, 255, 255),
);
final Widget pythonColor = SvgPicture.asset(
  fit: BoxFit.contain,
  pythonColorPath,
  semanticsLabel: 'Python Logo',
);

const String jsStrokePath = 'logo/js_stroke.svg';
const String jsColorPath = 'logo/js_color.svg';
final Widget jsStroke = SvgPicture.asset(
  fit: BoxFit.contain,
  jsStrokePath,
  semanticsLabel: 'JS Logo',
  color: const Color.fromARGB(255, 255, 255, 255),
);
final Widget jsColor = SvgPicture.asset(
  fit: BoxFit.contain,
  jsColorPath,
  semanticsLabel: 'JS Logo',
  color: const Color.fromARGB(255, 237, 255, 76),
);

const String dartStrokePath = 'logo/dart_stroke.svg';
const String dartColorPath = 'logo/dart_color.svg';
final Widget dartStroke = SvgPicture.asset(
  fit: BoxFit.contain,
  dartStrokePath,
  semanticsLabel: 'Dart Logo',
  color: const Color.fromARGB(255, 255, 255, 255),
);
final Widget dartColor = SvgPicture.asset(
  fit: BoxFit.contain,
  dartColorPath,
  semanticsLabel: 'Dart Logo',
);
