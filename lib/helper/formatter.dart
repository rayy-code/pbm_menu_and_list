import 'package:intl/intl.dart';

class FormatterLocal{

  static String toRupiah(nominal)
  {
    double angka = nominal;
    String formattedRupiah = NumberFormat.currency(locale: 'id', symbol: 'Rp', decimalDigits: 0).format(angka);

    return formattedRupiah;
  }
}