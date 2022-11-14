//logged out route >> accessible when user is loggedOut
//logged in route >> accessible when user is loggedIn

import 'package:flutter/material.dart';
import 'package:reddity/features/auth/screens/login_screen.dart';
import 'package:reddity/features/home/screen/home_screen.dart';
import 'package:routemaster/routemaster.dart';

final loggedOutRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: LoginScreen()),
});

final loggedInRoute = RouteMap(routes: {
  '/': (_) => const MaterialPage(child: HomeScreen()),
});

