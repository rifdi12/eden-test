import 'package:eden_farm/view/home/home_create/home_create_view.dart';
import 'package:eden_farm/view/home/home_view.dart';
import 'package:eden_farm/view/login/login_view.dart';
import 'package:eden_farm/view/profile/profile_view.dart';
import 'package:eden_farm/view/register/register_view.dart';
import 'package:flutter/material.dart';

route() {
  return <String, WidgetBuilder>{
    '/register': (context) => const RegisterView(),
    '/login': (context) => const LoginView(),
    '/home': (context) => const HomeView(),
    '/home/add': (context) => const HomeCreateView(),
    '/profile': (context) => const ProfileView(),
  };
}
