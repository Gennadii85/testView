import 'package:intl/intl.dart';

class JobDate {
  final DateTime addDate = DateTime.now().add(const Duration(hours: 7));
  final todayDate = DateFormat('EEEE LLLL d * h:mm a -').format(DateTime.now());
  final todayDate2 =
      DateFormat('h:mm a').format(DateTime.now().add(const Duration(hours: 7)));
}
