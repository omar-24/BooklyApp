import 'package:bloc/bloc.dart';
import 'package:booklyapp/feature/home/presentation/manager/AllBookCubit/Astates.dart';

import '../../../data/repo/home_repo.dart';
class Acubit extends Cubit<AllState>{
  final Home_repo homerepo;
  Acubit(this.homerepo,super.initialState);

  FetchABooks() async{
    emit(AllLoeding());
    var result = await homerepo.featchallBooks();
    result.fold((ifLeft){
      emit(AllFailed(ifLeft.error));
    },
            (ifRight){
          emit(AllSuccess(ifRight));
        });
  }

}