import 'package:deliver_app/Authentication%20Screen/createAccount.dart';
import 'package:deliver_app/Authentication%20Screen/forgetPassword.dart';
import 'package:deliver_app/Authentication%20Screen/resetPassword.dart';
import 'package:deliver_app/Authentication%20Screen/signinScreen.dart';
import 'package:deliver_app/Authentication%20Screen/verifyOTP1.dart';
import 'package:deliver_app/Authentication%20Screen/verifyOTP2.dart';
import 'package:deliver_app/Home%20Screen/choose_Location.dart';
import 'package:deliver_app/Home%20Screen/homePage.dart';
import 'package:deliver_app/Home%20Screen/homeScreen.dart';
import 'package:deliver_app/Home%20Screen/parcel_Details.dart';
import 'package:deliver_app/Home%20Screen/profilePage.dart';
import 'package:deliver_app/Home%20Screen/rider.dart';
import 'package:deliver_app/Home%20Screen/searchPage.dart';
import 'package:deliver_app/Home%20Screen/searchingRider.dart';
import 'package:deliver_app/Home%20Screen/settingPage.dart';
import 'package:deliver_app/Home%20Screen/summery.dart';
import 'package:deliver_app/SplashScreen.dart';
import 'package:deliver_app/welcomePage.dart';
import 'package:get/get_navigation/src/routes/get_route.dart' show GetPage;



class AppRoute {

  static const String splashScreen = '/splashScreen';
  static const String welcomepage = '/welcomepage';
  static const String signscreen = '/signscreen';
  static const String forgetPassword = '/forgetPassword';
  static const String verifyOTP = '/verifyOTP';
  static const String resetPassword = '/resetPassword';
  static const String createAccount = '/createAccount';
  static const String verifyOTP2 = '/verifyOTP2';
  static const String homescreen= '/homescreen';

  /// this is my buttonNagivation Bar===================.........>>
  static const String settingpage= '/settingpage';
  static const String profilepage= '/profilepage';
  static const String searchpage= '/searchpage';
  static const String homepage= '/homepage';

  /// there are all home screen delitals =====.>>>>>>>>

  static const String chooselocation= '/chooselocation';
  static const String parcelpetails= '/parcelpetails';
  static const String summery= '/summery';
  static const String searchingrider= '/searchingrider';
  static const String rider= '/rider';







  static List<GetPage> route = [
    GetPage(name: splashScreen, page: () => Splashscreen()),
    GetPage(name: welcomepage, page: () => Welcomepage()),
    GetPage(name: signscreen, page: () => Signinscreen()),
    GetPage(name: forgetPassword, page: () => Forgetpassword()),
    GetPage(name: verifyOTP, page: () => Verifyotp()),
    GetPage(name: resetPassword, page: () => Resetpassword()),
    GetPage(name: createAccount, page: () => Createaccount()),
    GetPage(name: verifyOTP2, page: () => Verifyotp2()),
    GetPage(name: homescreen, page: () => Homescreen()),
    /// this is my buttonNagivation Bar===================.........>>

    GetPage(name: settingpage, page: () => Settingpage()),
    GetPage(name: profilepage, page: () => Profilepage()),
    GetPage(name: searchpage, page: () => Searchpage()),
    GetPage(name: homepage, page: () => Homepage()),


    /// there are all home screen delitals =====.>>>>>>>>

    GetPage(name: chooselocation, page: () =>ChooseLocation()),
    GetPage(name: parcelpetails, page: () =>ParcelDetails()),
    GetPage(name: summery, page: () =>Summery()),
    GetPage(name: searchingrider, page: () =>Searchingrider()),
    GetPage(name: rider, page: () =>Rider()),










  ];
}
