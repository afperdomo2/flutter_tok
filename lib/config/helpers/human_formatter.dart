import 'package:intl/intl.dart';

class HumanFormatter {
  static String formatLargeNumber(double value) {
    return NumberFormat.compactCurrency(decimalDigits: 1, symbol: '')
        .format(value);
  }

  /// Convierte un número en un formato de moneda (opcionalmente puedes configurar el símbolo y los decimales)
  static String formatCurrency(num value,
      {String locale = 'en_US', String symbol = '\$'}) {
    final format = NumberFormat.currency(locale: locale, symbol: symbol);
    return format.format(value);
  }

  /// Formatea una fecha en un formato amigable para humanos
  static String formatDate(DateTime date,
      {String pattern = 'MMM dd, yyyy', String? locale}) {
    final format = DateFormat(pattern, locale);
    return format.format(date);
  }

  /// Devuelve una diferencia de tiempo de manera legible (por ejemplo: "hace 2 días")
  // static String timeAgo(DateTime date, {String locale = 'en'}) {
  //   final now = DateTime.now();
  //   final difference = now.difference(date);

  //   if (difference.inMinutes < 1)
  //     return locale == 'es' ? 'hace unos momentos' : 'just now';
  //   if (difference.inMinutes == 1)
  //     return locale == 'es' ? 'hace un minuto' : '1 minute ago';
  //   if (difference.inMinutes < 60)
  //     return locale == 'es'
  //         ? 'hace ${difference.inMinutes} minutos'
  //         : '${difference.inMinutes} minutes ago';
  //   if (difference.inHours == 1)
  //     return locale == 'es' ? 'hace una hora' : '1 hour ago';
  //   if (difference.inHours < 24)
  //     return locale == 'es'
  //         ? 'hace ${difference.inHours} horas'
  //         : '${difference.inHours} hours ago';
  //   if (difference.inDays == 1) return locale == 'es' ? 'ayer' : 'yesterday';
  //   if (difference.inDays < 30)
  //     return locale == 'es'
  //         ? 'hace ${difference.inDays} días'
  //         : '${difference.inDays} days ago';
  //   if (difference.inDays < 365)
  //     return locale == 'es'
  //         ? 'hace ${difference.inDays ~/ 30} meses'
  //         : '${difference.inDays ~/ 30} months ago';
  //   return locale == 'es'
  //       ? 'hace ${difference.inDays ~/ 365} años'
  //       : '${difference.inDays ~/ 365} years ago';
  // }

  /// Formatea un porcentaje con un número fijo de decimales
  static String formatPercentage(double value, {int decimals = 2}) {
    return '${(value * 100).toStringAsFixed(decimals)}%';
  }

  /// Convierte bytes a un formato más legible (KB, MB, GB, TB)
  static String formatBytes(int bytes, {int decimals = 2}) {
    const sizes = ['B', 'KB', 'MB', 'GB', 'TB'];
    if (bytes == 0) return '0 B';
    final i = (bytes / 1024).floor().clamp(0, sizes.length - 1);
    final value = (bytes / (1024 * i)).toStringAsFixed(decimals);
    return '$value ${sizes[i]}';
  }
}
