import 'package:get/get.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_binding.dart';
import 'package:flutter_mcd_ecommerce/app/pages/cart_page/cart_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/history_page/history_page_binding.dart';
import 'package:flutter_mcd_ecommerce/app/pages/history_page/history_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_binding.dart';
import 'package:flutter_mcd_ecommerce/app/pages/home_page/home_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/login_page_binding.dart';
import 'package:flutter_mcd_ecommerce/app/pages/login_page/login_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_binding.dart';
import 'package:flutter_mcd_ecommerce/app/pages/menu_page/menu_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/profile_page_binding.dart';
import 'package:flutter_mcd_ecommerce/app/pages/profile_page/profile_page_view.dart';
import 'package:flutter_mcd_ecommerce/app/pages/signup_page/signup_page_binding.dart';
import 'package:flutter_mcd_ecommerce/app/pages/signup_page/signup_page_view.dart';


part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CART_PAGE;

  static final routes = [
    GetPage(
        name: _Paths.HOME_PAGE,
        page: () => HomePageView(),
        binding: HomePageBinding(),
        transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.LOGIN_PAGE,
        page: () => LoginPageView(),
        binding: LoginPageBinding(),
        transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.SIGNUP_PAGE,
        page: () => SignupPageView(),
        binding: SignupPageBinding(),
        transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.MENU_PAGE,
        page: () => MenuPageView(),
        binding: MenuPageBinding(),
        transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.HISTORY_PAGE,
        page: () => HistoryPageView(),
        binding: HistoryPageBinding(),
        transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.PROFILE_PAGE,
        page: () => ProfilePageView(),
        binding: ProfilePageBinding(),
        transition: Transition.noTransition
    ),
    GetPage(
        name: _Paths.CART_PAGE,
        page: () => CartPageView(),
        binding: CartPageBinding(),
        transition: Transition.noTransition
    ),
  ];
}