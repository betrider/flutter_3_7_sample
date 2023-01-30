
void objectDestructing(){
   Map<String, int> hist = {'11':1234, '22':5678 };
   for (var MapEntry(key:key, value:count) in hist.entries) {
     print('$key: occurred $count times');
   }
}