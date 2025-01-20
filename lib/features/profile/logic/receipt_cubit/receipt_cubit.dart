import 'package:bloc/bloc.dart';
import 'package:foodie/core/firebase/models/firebase_exceptions/firebase_exceptions.dart';
import 'package:foodie/features/home/data/repos/foodie_food_repo.dart';
import 'package:foodie/features/profile/data/repos/profile_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../cart/data/models/receipt.dart';

part 'receipt_cubit.freezed.dart';

part 'receipt_state.dart';

class ReceiptCubit extends Cubit<ReceiptState> {
  final ProfileRepo profileRepo;
  final FoodieFoodRepo foodieFoodRepo;

  ReceiptCubit(this.profileRepo, this.foodieFoodRepo)
      : super(const ReceiptState.initial());

  void getReceipts() async {
    emit(const ReceiptState.loading());
    final response = await foodieFoodRepo.fetchReceipts();
    response.when(
      success: (receipts) {
        emit(ReceiptState.success(receipts: receipts));
      },
      failure: (error) {
        emit(
          ReceiptState.error(
            error: FirebaseExceptions.getErrorMessage(error),
          ),
        );
      },
    );
  }
}
