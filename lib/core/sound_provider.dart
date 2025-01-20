import 'package:flutter/material.dart';

class SoundProvider with ChangeNotifier {
  double _currentFrequency = 0;

  double getFrequency() => _currentFrequency;
}
