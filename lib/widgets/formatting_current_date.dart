import 'package:intl/intl.dart';

String formattingCurrentDate() {
  var currentDate = DateTime.now();
  var formattedCurrentDate = DateFormat("dd/MM/yyyy").format(currentDate);
  return formattedCurrentDate;
}
