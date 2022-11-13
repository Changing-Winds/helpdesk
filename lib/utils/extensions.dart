// ignore_for_file: unnecessary_this

import 'package:dartz/dartz.dart';

extension EitherX<L, R> on Either<L, R> {
  R asRight() => (this as Right).value; //
  L asLeft() => (this as Left).value;
}

const String defaultPattern = 'WORD';

extension StringCasing on String {
  String snakeCase() {
    List<String> splittedString = this.split(' ');

    if (splittedString.isEmpty) {
      return '';
    }

    return splittedString.map((s) => s.toLowerCase()).toList().join('_');
  }
}
