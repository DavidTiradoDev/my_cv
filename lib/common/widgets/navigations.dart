import 'package:flutter/material.dart';
import 'package:my_cv/common/navigator_key.dart';

class Navigations {
  Navigations._();

  static void navigationToScreen({
    required Widget screen,
    VoidCallback? onPop,
  }) {
    navigatorKey.currentState!
        .push(
          PageRouteBuilder(
            pageBuilder: (context, animation, secondaryAnimation) => screen,
            transitionsBuilder: (
              context,
              animation,
              secondaryAnimation,
              child,
            ) {
              var tween = Tween(
                begin: Offset(0, 0),
                end: Offset.zero,
              ).chain(CurveTween(curve: Curves.easeInOut));
              return SlideTransition(
                position: animation.drive(tween),
                child: child,
              );
            },
          ),
        )
        .then((_) {
          if (onPop != null) {
            onPop();
          }
        });
  }

  static void navigationToScreenOff({required Widget screen}) {
    navigatorKey.currentState!.pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(
            begin: Offset(0, 0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOut));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
    );
  }

  static void navigationToScreenOffAll({required Widget screen}) {
    navigatorKey.currentState!.pushAndRemoveUntil(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(
            begin: Offset(0, 0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOut));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
      (route) => false,
    );
  }
}
