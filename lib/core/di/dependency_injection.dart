import 'package:foodie/features/auth/data/repos/auth_repo.dart';
import 'package:foodie/features/auth/logic/login_cubit/login_cubit.dart';
import 'package:get_it/get_it.dart';

import '../firebase/custom_firebase.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<CustomFirebase>(() => CustomFirebase());
  getIt.registerLazySingleton<AuthRepo>(() => AuthRepo(getIt()));
  //Auth Cubits
  getIt.registerLazySingleton<LoginCubit>(() => LoginCubit(getIt()));
}
