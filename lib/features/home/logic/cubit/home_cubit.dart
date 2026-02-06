
import 'package:advanced_flutter/core/networking/api_results.dart';
import 'package:advanced_flutter/features/home/data/repos/home_api_repo.dart';
import 'package:advanced_flutter/features/home/logic/cubit/home_state.dart';
import 'package:bloc/bloc.dart';




class HomeCubit extends Cubit<HomeState> {
  final HomeApiRepo homeApiRepo;
  HomeCubit(this.homeApiRepo) : super(HomeState.initial());
  void getSpicalization() async {
    emit(HomeState.spicalizationLoading());
    final result = await homeApiRepo.getSpicalization();
    result.when(
      success: (data) {
        emit(HomeState.spicalizationSuccess(data));
      },
      failure: (e) {
        emit(HomeState.spicalizationError(e));
      },
    );
  }
}
