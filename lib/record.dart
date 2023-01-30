/// muultiple returns & Pattern matching
void record(){

  var info = userInfo(json);
  var name = info.$0;
  var age = info.$1;

  print(name);
  print(age);
  print('---------------');

  var(name2,age2) = userInfo(json);

  print(name2);
  print(age2);
  print('---------------');

  var record = (1, 2, x: 3, y: 4);
  
  print(record.$0);
  print(record.$1);
  print(record.x);
  print(record.y);
  print('---------------');

}

(String, int) userInfo(Map<String, dynamic> json) {
	return (json['name'] as String, json['age'] as int);
}

var json = {'name': 'Lily', 'age': 13};