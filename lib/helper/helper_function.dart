import 'package:shared_preferences/shared_preferences.dart';

class HelperFunction{

//keys
static String userLoggedInKey="LOGGEDINKEY";
static String userNameKey="USERNAMEKEY";
static String userEmailKey="USEREMAILKEY";




  //saving data to sf




  //getting data from sf
   static Future<bool?>getUserLoggedInStatus() async{
      SharedPreferences sf=await SharedPreferences.getInstance();
      return sf.getBool(userLoggedInKey);





      
   }
}