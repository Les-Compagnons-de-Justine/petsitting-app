import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:petsitting/core/error/bloc/error_bloc.dart';
import 'package:petsitting/core/error/bloc/error_state.dart';
import 'package:petsitting/core/router/app_router.dart';
import 'package:petsitting/core/theme/app_theme.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_bloc.dart';
import 'package:petsitting/features/auth/presentation/bloc/auth/auth_state.dart';
import 'package:quickalert/models/quickalert_type.dart';
import 'package:quickalert/widgets/quickalert_dialog.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends HookWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final goRouter = useMemoized(() => AppRouter.goRouter);

    return AdaptiveTheme(
      initial: AdaptiveThemeMode.system,
      light: AppThemeData.lightTheme,
      dark: AppThemeData.darkTheme,
      builder: (theme, darkTheme) {
        return MaterialApp.router(
          title: 'Les compagnons de Justine',
          theme: theme,
          darkTheme: darkTheme,
          routerConfig: goRouter,
          locale: DevicePreview.locale(context),
          builder: (context, child) {
            return DevicePreview.appBuilder(
              context,
              MultiBlocListener(
                listeners: [
                  BlocListener<AuthBloc, AuthState>(listener: (context, state) {
                    if (state != Initial() && state != Checking()) {
                      FlutterNativeSplash.remove();
                    }
                  }),
                  BlocListener<ErrorBloc, ErrorState>(
                    listener: (context, state) {
                      final navigatorContext = rootNavigatorKey.currentContext;

                      if (navigatorContext != null && navigatorContext.mounted) {
                        state.when(
                          noError: () {},
                          hasError: (error) {
                            QuickAlert.show(
                              context: navigatorContext,
                              type: QuickAlertType.error,
                              title: 'Erreur',
                              text: error.message,
                            );
                          },
                          hasErrorMessage: (errorMessage) {
                            QuickAlert.show(
                              context: navigatorContext,
                              type: QuickAlertType.error,
                              title: 'Erreur',
                              text: errorMessage,
                            );
                          },
                        );
                      }
                    },
                  ),
                ],
                child: BlocBuilder<AuthBloc, AuthState>(builder: (context, state) {
                  return ResponsiveBreakpoints.builder(
                    breakpoints: [
                      const Breakpoint(start: 0, end: 480, name: 'MOBILE_SMALL'),
                      const Breakpoint(start: 481, end: 850, name: MOBILE),
                      const Breakpoint(start: 850, end: 1080, name: TABLET),
                      const Breakpoint(start: 1081, end: double.infinity, name: DESKTOP),
                    ],
                    child: Builder(builder: (context) {
                      return Container(
                        color: Theme.of(context).scaffoldBackgroundColor,
                        child: ResponsiveScaledBox(
                          width: ResponsiveValue<double?>(context, defaultValue: null, conditionalValues: [
                            const Condition.equals(name: 'MOBILE_SMALL', value: 480),
                          ]).value,
                          child: ClampingScrollWrapper.builder(
                            context,
                            MaxWidthBox(
                              maxWidth: 1400,
                              child: Builder(builder: (context) {
                                if (state is Checking) {
                                  return Scaffold(
                                    body: Center(
                                      child: CircularProgressIndicator(),
                                    ),
                                  );
                                }
                                return child!;
                              }),
                            ),
                          ),
                        ),
                      );
                    }),
                  );
                }),
              ),
            );
          },
        );
      },
    );
  }
}
