import 'package:jiffy/jiffy.dart';
import 'package:petsitting/swagger_generated_code/pet_sitting_client.swagger.dart';

extension DatetimeExt on Timestamp {
  DateTime toDateTime() => DateTime.fromMillisecondsSinceEpoch(
        (seconds ?? 0) * 1000 + ((nanos ?? 0) / 1000000).round(),
      );
}

extension DateTimeExt on DateTime {
  String formatDate({String? pattern}) {
    return Jiffy.parseFromDateTime(this).format(pattern: pattern ?? 'dd/MM/yyyy');
  }
}
