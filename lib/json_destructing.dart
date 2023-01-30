///JSON Destructing
void jsonDestructing(){
  var json = {'user': ['Lily', 13, 2019]};

  //1
  if (json.length == 1 &&
      json.containsKey('user')) {
    var user = json['user'];
    if (user is List<dynamic> &&
        user!.length == 2 &&
        user[0] is String &&
        user[1] is int) {
      var name = user[0] as String;
      var age = user[1] as int;
      print('User $name is $age years old');
    }
  }
  if (json.length == 1 &&
      json.containsKey('user')) {
    var user = json['user'];
    if (user is List<dynamic> &&
        user!.length == 3 &&
        user[0] is String &&
        user[1] is int &&
        user[2] is int) {
      var name = user[0] as String;
      var age = user[1] as int;
      var year = user[2] as int;
      print('User $name is $age years old year:$year');
    }
  }

  //2
  switch(json) {
    case {'user': [String name, int age]}:
      print('User $name is $age years old');
      break;
    case {'user': [String name, int age, int year]}:
      print('User $name is $age years old year:$year');
      break;
      
    default:
      throw 'Unknown message';
  }
}