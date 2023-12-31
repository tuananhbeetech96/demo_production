extension IntExtension on int {
  Duration get milliseconds => Duration(milliseconds: this);

  Duration get seconds => Duration(seconds: this);

  Duration get microseconds => Duration(microseconds: this);

  Duration get hours => Duration(hours: this);
}
