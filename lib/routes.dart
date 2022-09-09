import 'package:flutter/widgets.dart';
import 'package:mall778/screens/cart/cart_screen.dart';
import 'package:mall778/screens/category/category_screen.dart';
import 'package:mall778/screens/categorylist/catelist_screen.dart';
import 'package:mall778/screens/chat/chat_screen.dart';
import 'package:mall778/screens/complete_profile/complete_profile_screen.dart';
import 'package:mall778/screens/details/details_screen.dart';
import 'package:mall778/screens/forgot_password/forgot_password_screen.dart';
import 'package:mall778/screens/home/home_screen.dart';
import 'package:mall778/screens/login_success/login_success_screen.dart';
import 'package:mall778/screens/option/option_screen.dart';
import 'package:mall778/screens/otp/otp_screen.dart';
import 'package:mall778/screens/service/service_screen.dart';
import 'package:mall778/screens/sign_in/sign_in_screen.dart';
import 'package:mall778/screens/splash/splash_screen.dart';
import 'package:mall778/screens/storefront/stores_screen.dart';
import 'package:mall778/screens/storesaround/storesaround_screen.dart';
import 'package:mall778/screens/topcategorylist/topcatelist_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  CatelistScreen.routeName: (context) => CatelistScreen(),
  OptionScreen.routeName: (context) => OptionScreen(),
  ChatScreen.routeName: (context) => ChatScreen(),
  ServiceScreen.routeName: (context) => ServiceScreen(),
  CategoryScreen.routeName: (context) => CategoryScreen(),
  TopCateScreen.routeName: (context) => TopCateScreen(),
  StoreAroundScreen.routeName: (context) => StoreAroundScreen(),
  StoreFrontScreen.routeName: (context) => StoreFrontScreen(),
};
