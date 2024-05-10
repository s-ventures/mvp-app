import 'dart:io';

extension FileX on File {
  /// Returns the name of the file from the path. Can be null if the path is empty
  String? get name {
    final parts = path.split('/');
    if (parts.isEmpty) {
      return null;
    }

    return parts.last;
  }
}
