import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Navigations {
  Navigations._();

  static void navigationToScreen({
    required Widget screen,
    VoidCallback? onPop,
  }) {
    Navigator.of(Get.context!)
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
    Navigator.of(Get.context!).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(
            begin: const Offset(0, 0),
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
    Navigator.of(Get.context!).pushAndRemoveUntil(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          var tween = Tween(
            begin: const Offset(0, 0),
            end: Offset.zero,
          ).chain(CurveTween(curve: Curves.easeInOut));
          return SlideTransition(
            position: animation.drive(tween),
            child: child,
          );
        },
      ),
      ModalRoute.withName('/'),
    );
  }
}
