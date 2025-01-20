class SingleStringModel {
  final double targetFrequency;
  final double intervalMinBoundary;
  final double intervalMaxBoundary;
  final String label;

  SingleStringModel({
    required this.intervalMaxBoundary,
    required this.intervalMinBoundary,
    required this.targetFrequency,
    required this.label,
  });
}
