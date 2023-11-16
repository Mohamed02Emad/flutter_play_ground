import 'dart:math';

class LbPerson {
  final String _name;
  String _image = "";
  final String _userName;
  final String _score;
  final bool _isUp = Random().nextBool();

  LbPerson(this._name, this._userName, this._score) {
    _image = _getRandomImage();
  }

  String get name => _name;

  String get image => _image;

  String get userName => _userName;

  String get score => _score;

  bool get isUp => _isUp;

  String _getRandomImage() {
    var randomInt = Random().nextInt(7);
    return "assets/images/person$randomInt.jpeg";
  }
}
