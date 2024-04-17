enum ClaimStatusType {
  open('En curso', 'OPEN'),
  close('Cerrado', 'CLOSE');

  const ClaimStatusType(this.name, this.type);

  final String name;
  final String type;

  static ClaimStatusType fromString(String type) {
    switch (type) {
      case 'OPEN':
        return ClaimStatusType.open;
      case 'CLOSE':
        return ClaimStatusType.close;
      default:
        throw ArgumentError('Invalid claim status type: $type');
    }
  }
}
