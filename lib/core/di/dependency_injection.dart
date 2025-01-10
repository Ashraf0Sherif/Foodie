import 'package:foodie/core/firebase/foodie_firebase_banner.dart';
import 'package:foodie/core/firebase/foodie_firebase_food.dart';
import 'package:foodie/core/paymob/paymob_service.dart';
import 'package:foodie/features/cart/data/repos/paymob_repo.dart';
import 'package:foodie/features/cart/logic/payment_cubit/payment_cubit.dart';
import 'package:foodie/features/forgot_password/data/repos/forgot_password_repo.dart';
import 'package:foodie/features/home/data/repos/banner_repo.dart';
import 'package:foodie/features/home/data/repos/foodie_food_repo.dart';
import 'package:foodie/features/profile/data/repos/profile_repo.dart';
import 'package:foodie/features/signUp/data/repos/sign_up_repo.dart';
import 'package:get_it/get_it.dart';

import '../../features/login/data/repos/login_repo.dart';
import '../firebase/foodie_firebase_profile.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  //Firebase
  getIt.registerLazySingleton<FoodieFirebaseProfile>(() => FoodieFirebaseProfile());
  getIt.registerLazySingleton<FoodieFirebaseFood>(() => FoodieFirebaseFood());
  getIt.registerLazySingleton<FoodieFirebaseBanner>(
      () => FoodieFirebaseBanner());
  //Services
  getIt.registerLazySingleton<PaymobService>(() => PaymobService());
  //Repos
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt()));
  getIt.registerLazySingleton<ForgotPasswordRepo>(
      () => ForgotPasswordRepo(getIt()));
  getIt.registerLazySingleton<BannerRepo>(() => BannerRepo(getIt()));
  getIt.registerLazySingleton<FoodieFoodRepo>(() => FoodieFoodRepo(getIt()));
  getIt.registerLazySingleton<PaymobRepo>(() => PaymobRepo(getIt()));
  getIt.registerLazySingleton<ProfileRepo>(() => ProfileRepo(getIt()));
  //Cubit
  getIt.registerFactory(() => PaymentCubit(getIt()));
}
