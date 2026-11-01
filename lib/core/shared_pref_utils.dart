
import 'package:shared_preferences/shared_preferences.dart';
class SharedPrefsKeys {

 static String key='suraIndex';
}
void saveLastSuraIndex(int suraIndex)async{
 final SharedPreferences prefs=await SharedPreferences.getInstance();
 List<String>mostResentList=prefs.getStringList(SharedPrefsKeys.key, )??[];
 if(mostResentList.contains('$suraIndex')){
  mostResentList.remove('$suraIndex');
  mostResentList.insert(0,'$suraIndex');

 }
else {
  mostResentList.insert(0,'$suraIndex');
 }
if(mostResentList.length>5){
 mostResentList.removeLast();

}

prefs.setStringList(SharedPrefsKeys.key, mostResentList);

}


