import 'package:foodie/core/firebase/foodie_firebase_banner.dart';
import 'package:foodie/core/firebase/foodie_firebase_food.dart';
import 'package:foodie/features/forgot_password/data/repos/forgot_password_repo.dart';
import 'package:foodie/features/home/data/repos/banner_repo.dart';
import 'package:foodie/features/home/data/repos/foodie_food_repo.dart';
import 'package:foodie/features/signUp/data/repos/sign_up_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../firebase/foodie_firebase_auth.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Firebase
  getIt.registerLazySingleton<FoodieFirebaseAuth>(() => FoodieFirebaseAuth());
  getIt.registerLazySingleton<FoodieFirebaseFood>(() => FoodieFirebaseFood());
  getIt.registerLazySingleton<FoodieFirebaseBanner>(
      () => FoodieFirebaseBanner());
  //Repos
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepo(getIt()));
  getIt.registerLazySingleton<BannerRepo>(() => BannerRepo(getIt()));
  getIt.registerLazySingleton<FoodieFoodRepo>(() => FoodieFoodRepo(getIt()));
}
