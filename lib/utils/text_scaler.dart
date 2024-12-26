import 'dart:math';

import 'package:flutter/material.dart';


TextScaler textScaler(BuildContext context, {double maxScaleFactor=1.5}){
  final width = MediaQuery.sizeOf(context).width;
  double val = (width / 1400) * maxScaleFactor;
  double scalingFactor = max(1, min(val, maxScaleFactor));
  return TextScaler.linear(scalingFactor);
}
