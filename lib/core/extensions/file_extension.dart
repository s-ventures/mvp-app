import 'dart:io';
import 'dart:math';

extension FileX on File {
  /// Returns the name of the file from the path. Can be null if the path is empty
  String? get name {
    final parts = path.split('/');
    if (parts.isEmpty) {
      return null;
    }

    return parts.last;
  }

  /// Returns the name of the file from the path. Can be null if the path is empty
  String? shortName({int visibleChars = 13}) {
    final parts = name?.split('.');

    if (parts == null || parts.isEmpty) {
      return null;
    }

    final maxLength = min(parts.first.length, visibleChars);

    return '${parts.first.substring(0, maxLength)}...${parts.last}';
  }
}
