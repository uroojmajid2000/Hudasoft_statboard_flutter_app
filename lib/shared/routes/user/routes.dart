import 'package:flutter/material.dart';

import '../../../features/user/presentation/screens/forgetpassword/forgetpassword_screen.dart';
import '../../../features/user/presentation/screens/newpassword/newpassword_screen.dart';
import '../../../features/user/presentation/screens/onboarding/onboarding_screen.dart';
import '../../../features/user/presentation/screens/passwordrecovery/passwordrecovery_screen.dart';
import '../../../features/user/presentation/screens/signin/signin_screen.dart';
import '../../../features/user/presentation/screens/splash/splash_screen.dart';

class UserRoutes {
  static Map<String, Widget Function(BuildContext)> routes = {
    SplashScreen.id: (context) => const SplashScreen(),
    // SignupScreen.id: (context) => const SignupScreen(),
    SigninScreen.id: (context) => const SigninScreen(),
    OnboardingScreen.id: (context) => const OnboardingScreen(),
    ForgetpasswordScreen.id: (context) => const ForgetpasswordScreen(),
    PasswordRecoveryScreen.id: (context) => const PasswordRecoveryScreen(),
    NewPasswordScreen.id: (context) => const NewPasswordScreen(),
  };
}
