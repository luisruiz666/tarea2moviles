import 'package:test/test.dart';
import 'package:flutter_application_1/models/favorites.dart';

void main() {
  group('App Provider Tests', () {
    var favorites = Favorites();

    test('An item should be removed', () {
      var number = 45;
      favorites.add(number);
      expect(favorites.items.contains(number), true);
      favorites.remove(number);
      expect(favorites.items.contains(number), false);
    });
  });
}
