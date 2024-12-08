import 'package:foodie/features/forgot_password/data/repos/forgot_password_repo.dart';
import 'package:foodie/features/signUp/data/repos/sign_up_repo.dart';
import 'package:foodie/features/signUp/logic/sign_up_cubit/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

import '../../features/forgot_password/logic/forgot_password_cubit/forgot_password_cubit.dart';
import '../../features/login/data/repos/login_repo.dart';
import '../../features/login/logic/login_cubit/login_cubit.dart';
import '../firebase/foodie_firebase_auth.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  getIt.registerLazySingleton<FoodieFirebaseAuth>(() => FoodieFirebaseAuth());
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepo(getIt()));
  //Auth Cubits
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt()));
  getIt
      .registerFactory<ForgotPasswordCubit>(() => ForgotPasswordCubit(getIt()));
}
