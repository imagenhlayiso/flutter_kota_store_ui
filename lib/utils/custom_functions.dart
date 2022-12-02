// ignore_for_file: import_of_legacy_library_into_null_safe

import 'package:intl/intl.dart';

String formatCurrency(num amount, {int decimalCount = 0}) {
  final formatCurrency =
      NumberFormat.simpleCurrency(decimalDigits: decimalCount);
  return formatCurrency.format(amount);
}
