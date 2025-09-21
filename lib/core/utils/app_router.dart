import 'package:cinevo/features/Auth/login_view.dart';
import 'package:cinevo/features/Auth/register_view.dart';
import 'package:cinevo/features/home/views/home_view.dart';
import 'package:cinevo/features/onboarding/views/onboarding_view.dart';
import 'package:cinevo/features/splash/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const initialRoute = '/';
  static const onboardingView = '/onboardingView';
  static const loginView = '/loginView';
  static const registerView = '/registerView';
  static const homeView = '/homeView';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: initialRoute,
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: onboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(path: loginView, builder: (context, state) => const LoginView()),
      GoRoute(
        path: registerView,
        builder: (context, state) => const RegisterView(),
      ),
      GoRoute(path: homeView, builder: (context, state) => const HomeView()),
    ],
  );
}
