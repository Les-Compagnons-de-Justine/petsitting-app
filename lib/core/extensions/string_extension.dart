import 'package:jiffy/jiffy.dart';

extension StringExtension on String {
  String toStandardDate() {
    return Jiffy.parse(this).format(pattern: 'dd/MM/yyyy');
  }
}
