import 'package:mini_guitar_tuner/models/single_string_model.dart';

class TuningModel {
  final String title;
  final List<SingleStringModel> strings;

  TuningModel({
    required this.title,
    required this.strings,
  });
}
