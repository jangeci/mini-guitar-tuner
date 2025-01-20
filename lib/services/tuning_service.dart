import 'package:mini_guitar_tuner/core/config.dart';

List<KeyValueObject> getTuningNotes(String? tuning){
  switch(tuning){
    case AppConstants.kStandard:
      return AppConstants.kStandardNotes;
    case AppConstants.kDropD:
    return AppConstants.kDropDNotes;
    case AppConstants.kOpenC:
      return AppConstants.kOpenCNotes;
    default: return AppConstants.kStandardNotes;
  }
}