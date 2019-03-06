/// A method returns a human readable string representing a file size
String filesize(size, [int round = 2]) {
  int divider = 1024;
  /** 
   * [size] can be passed as number or as string
   *
   * the optional parameter [round] specifies the number 
   * of digits after comma/point (default is 2)
   */
  try {
    size = int.parse(size.toString());
  } catch (e) {
    throw ("filesize: can not parse the size parameter: $e");
  }

  if (size < divider) return "$size B";

  if (size < divider * divider && size % divider == 0)
    return "${(size / divider).toStringAsFixed(0)} KB";

  if (size < divider * divider)
    return "${(size / divider).toStringAsFixed(round)} KB";

  if (size < divider * divider * divider && size % divider == 0)
    return "${(size / (divider * divider)).toStringAsFixed(0)} MB";

  if (size < divider * divider * divider)
    return "${(size / divider / divider).toStringAsFixed(round)} MB";

  if (size < divider * divider * divider * divider && size % divider == 0)
    return "${(size / (divider * divider * divider)).toStringAsFixed(0)} GB";

  if (size < divider * divider * divider * divider)
    return "${(size / divider / divider / divider).toStringAsFixed(round)} GB";

  if (size < divider * divider * divider * divider * divider &&
      size % divider == 0)
    return "${(size / divider / divider / divider / divider).toStringAsFixed(0)} TB";

  if (size < divider * divider * divider * divider * divider)
    return "${(size / divider / divider / divider / divider).toStringAsFixed(round)} TB";

  if (size < divider * divider * divider * divider * divider * divider &&
      size % divider == 0) {
    return "${(size / divider / divider / divider / divider / divider).toStringAsFixed(0)} PB";
  } else {
    return "${(size / divider / divider / divider / divider / divider).toStringAsFixed(round)} PB";
  }
}
