import 'package:flutter/material.dart';

extension Box on num {
  get getH => SizedBox(height: toDouble(),);
  get getW => SizedBox(width: toDouble(),);
}
