import 'package:bloc/bloc.dart';
import 'package:booklyapp/feature/home/presentation/manager/NewestBookCubit/Nstates.dart';

import '../../../data/repo/home_repo.dart';
class Ncubit extends Cubit<NewestState>{
  final Home_repo homerepo;
  Ncubit(this.homerepo,super.initialState);

  FetchNBooks() async{
    emit(NewestLoeding());
    var result = await homerepo.featchNewestBooks();
    result.fold((ifLeft){
      emit(NewestFailed(ifLeft.error));
    },
            
            
     (ifRight){
      emit(NewestSuccess(ifRight));
     });
  }

}