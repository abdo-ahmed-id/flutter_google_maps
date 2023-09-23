import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_google_maps/presentation/screens/map_screen.dart';

import 'business_logic/cubit/maps/maps_cubit.dart';
import 'constnats/strings.dart';
import 'data/repository/maps_repo.dart';
import 'data/webservices/places_webservices.dart';

class AppRouter {
  // PhoneAuthCubit? phoneAuthCubit;

  AppRouter() {
    // phoneAuthCubit = PhoneAuthCubit();
  }

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case mapScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
                MapsCubit(MapsRepository(PlacesWebservices())),
            child: MapScreen(),
          ),
        );

      // case loginScreen:
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider<PhoneAuthCubit>.value(
      //       value: phoneAuthCubit!,
      //       child: LoginScreen(),
      //     ),
      //   );

      // case otpScreen:
      //   final phoneNumber = settings.arguments;
      //   return MaterialPageRoute(
      //     builder: (_) => BlocProvider<PhoneAuthCubit>.value(
      //       value: phoneAuthCubit!,
      //       child: OtpScreen(phoneNumber: phoneNumber),
      //     ),
      //   );
    }
  }
}
