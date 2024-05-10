import 'dart:io';

extension FileX on File {
  String get name => path.split('/').last;
}
