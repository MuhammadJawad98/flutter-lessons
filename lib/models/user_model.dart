class Users {
  String _name = '';
  String _age = '';
  String _designation = '';

  Users(this._name, this._age, this._designation);

  // Users.fromJson(Map json){
  //   _name = json['name'];
  //   _age = json['age'];
  //   _designation = json['designation'];
  // }

  String get designation => _designation;

  set designation(String value) {
    _designation = value;
  }

  String get age => _age;

  set age(String value) {
    _age = value;
  }

  String get name => _name;

  set name(String value) {
    _name = value;
  }
}
