 // 8. Create an enum with days and return a string based on the day.


enum Day { saturday, sunday, monday, tuesday, wednesday, thursday, friday }

String getMessageForDay(Day day) {
  if (day == Day.sunday) {
    return 'Start of the week!';
  } else if (day == Day.friday) {
    return 'Weekend is coming!';
  } else if (day == Day.friday || day == Day.saturday) {
    return 'Enjoy your weekend!';
  } else {
    return 'Just another weekday.';
  }
}

void main() {
  print(getMessageForDay(Day.saturday));
}