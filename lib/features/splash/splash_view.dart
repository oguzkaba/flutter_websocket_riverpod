import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../core/constants/app/app_routes_constant.dart';

@RoutePage()
class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      controlAuth(const Duration(seconds: 3));
    });
  }

  Future<void> controlAuth(Duration duration) async {
    await Future.delayed(duration).then((value) {
      context.router.replaceNamed(AppRoutesConstant.routeDashboard);
    });
  }

  @override
  Widget build(BuildContext context) {
    const durationTime = Duration(milliseconds: 2500);
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.dark,
      child: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SpinPerfect(
                  spins: 3, duration: durationTime, child: const FlutterLogo()),
              FadeIn(
                duration: durationTime,
                child: RichText(
                    text: const TextSpan(
                        text: 'Open ',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                        children: [
                      TextSpan(
                          text: 'AI',
                          style: TextStyle(
                              color: Colors.amber,
                              fontSize: 24,
                              fontWeight: FontWeight.bold))
                    ])),
              )
            ],
          ),
        ),
      ),
    );
  }
}
