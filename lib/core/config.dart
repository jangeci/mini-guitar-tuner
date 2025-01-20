class AppConstants {
  static const kStandard = 'Standard';
  static const kDropD = 'Drop D';
  static const kOpenC = 'Open C';

  static final List<KeyValueObject> kStandardNotes = [
    KeyValueObject(key: 'e', value: 82.41),
    KeyValueObject(key: 'a', value: 110),
    KeyValueObject(key: 'd', value: 146.83),
    KeyValueObject(key: 'g', value: 196),
    KeyValueObject(key: 'b', value: 246.94),
    KeyValueObject(key: 'e', value: 329.63),
  ];

  static final List<KeyValueObject> kDropDNotes = [
    KeyValueObject(key: 'd', value: 73.42),
    KeyValueObject(key: 'a', value: 110),
    KeyValueObject(key: 'd', value: 146.83),
    KeyValueObject(key: 'g', value: 196),
    KeyValueObject(key: 'b', value: 246.94),
    KeyValueObject(key: 'e', value: 329.63),
  ];

  static final List<KeyValueObject> kOpenCNotes = [
    KeyValueObject(key: 'c', value: 65.41),
    KeyValueObject(key: 'g', value: 98),
    KeyValueObject(key: 'c', value: 130.81),
    KeyValueObject(key: 'g', value: 196),
    KeyValueObject(key: 'c', value: 261.63),
    KeyValueObject(key: 'e', value: 329.63),
  ];
}

class KeyValueObject {
  final String key;
  final double value;

  KeyValueObject({
    required this.key,
    required this.value,
  });
}
