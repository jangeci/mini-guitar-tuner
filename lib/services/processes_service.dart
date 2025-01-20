import 'package:mini_guitar_tuner/core/config.dart';
import 'package:mini_guitar_tuner/models/single_string_model.dart';

//Set bounds for notes frequencies
SingleStringModel getStringModel({
  required int index,
  required List<KeyValueObject> notes,
  required KeyValueObject currentNote,
}) {
  late double min;
  late double max;

  if (index == 0) {
    //first note
    min =
        currentNote.value - ((notes[index + 1].value - currentNote.value) / 2);
    max = currentNote.value -
        ((notes[index + 1].value - currentNote.value) / 2) -
        0.01;
  } else if (index == notes.length - 1) {
    //last note
    min = currentNote.value -
        ((currentNote.value - notes[index - 1].value) / 2) +
        0.01;
    max =
        currentNote.value + ((currentNote.value - notes[index - 1].value) / 2);
  } else {
    min = currentNote.value -
        ((currentNote.value - notes[index - 1].value) / 2) +
        0.01;
    max = currentNote.value -
        ((notes[index + 1].value - currentNote.value) / 2) -
        0.01;
  }

  return SingleStringModel(
      intervalMaxBoundary: max,
      intervalMinBoundary: min,
      targetFrequency: currentNote.value,
      label: currentNote.key);
}

//calculate horizontal positon
double getX({
  required double width,
  required SingleStringModel data,
  double pointerWidth = 6,
}) {
  return 0;
}
