// ignore_for_file: unnecessary_getters_setters

class Note {
  int _id;
  String _title;
  String _description;
  String _date;
  int _color;

  Note(this._title, this._date, this._color, [this._description]);

  Note.withId(this._id, this._title, this._date, this._color,
      [this._description]);

  int get id => _id;

  String get title => _title;

  String get description => _description;

  int get color => _color;
  String get date => _date;

  set title(String newTitle) {
    if (newTitle.length <= 255) {
      _title = newTitle;
    }
  }

  set description(String newDescription) {
    if (newDescription.length <= 255) {
      _description = newDescription;
    }
  }

  set color(int newColor) {
    if (newColor >= 0 && newColor <= 9) {
      _color = newColor;
    }
  }

  set date(String newDate) {
    _date = newDate;
  }

  Map<String, dynamic> toMap() {
    var map = Map<String, dynamic>();
    if (id != null) {
      map['id'] = _id;
    }
    map['title'] = _title;
    map['description'] = _description;
    map['color'] = _color;
    map['date'] = _date;

    return map;
  }

  Note.fromMapObject(Map<String, dynamic> map) {
    _id = map['id'];
    _title = map['title'];
    _description = map['description'];
    _color = map['color'];
    _date = map['date'];
  }
}
