import 'package:flutter/material.dart';
import 'package:mini_guitar_tuner/core/config.dart';
import 'package:mini_guitar_tuner/models/tuning_model.dart';
import 'package:mini_guitar_tuner/services/processes_service.dart';
import 'package:mini_guitar_tuner/services/tuning_service.dart';

class TuningProvider with ChangeNotifier {
  String? _currentTuning = AppConstants.kStandard;

  TuningModel get currentTuningData {
    final notes = getTuningNotes(_currentTuning);

    return TuningModel(
      title: _currentTuning ?? '',
      strings: notes
          .asMap()
          .entries
          .map(
            (entry) => getStringModel(
                index: entry.key, notes: notes, currentNote: entry.value),
          )
          .toList(),
    );
  }

  Future<void> init() async {
    //TODO init load last saved config
    notifyListeners();
  }

  void setTuning(String tuning) {
    _currentTuning = tuning;
    notifyListeners();
  }

  String? getTuning(){
    return _currentTuning;
  }
}
