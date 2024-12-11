import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import '../../data/repos/banner_repo.dart';

part 'banner_state.dart';

part 'banner_cubit.freezed.dart';

class BannerCubit extends Cubit<BannerState> {
  final BannerRepo bannerRepo;

  BannerCubit(this.bannerRepo) : super(const BannerState.initial());

  void emitBannerStates() async {
    final response = await bannerRepo.getBanners();
    response.when(success: (banners) {
      emit(BannerState.success(banners));
    }, failure: (error) {
      emit(BannerState.error(error: FirebaseExceptions.getErrorMessage(error)));
    });
  }
}
