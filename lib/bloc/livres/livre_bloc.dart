
import 'package:bloc/bloc.dart';
import 'package:examen/bloc/livres/livre_event.dart';
import 'package:examen/bloc/livres/livre_state.dart';
import 'package:examen/model/livre_model.dart';
import 'package:examen/repositories/livre_repository.dart';

class LivreBloc extends Bloc<LivreEvent,LivreState>{
  LivreRepository livreRepository;
  LivreBloc(LivreState livreState, this.livreRepository):super(livreState){
    on<LivreEvent>((event, emit) async{
      if(event is LoadAllLivresEvent){

        emit(LivreState(livres: [],requestState: RequestState.Loading));
          List<Livre> livres=await livreRepository.allLivres();
          emit(LivreState(livres: livres,requestState: RequestState.Loaded));
      }
      else if(event is FindByCleLivreEvent){
              emit(LivreState(livres: [],requestState: RequestState.Loading,errorMessage: ""));
              List<Livre> livres= await livreRepository.livreByCle(event.titre);
              emit(LivreState(livres: livres,requestState: RequestState.Loaded,errorMessage: ""));
      }
      else if(event is DeleteByIdLivreEvent){
        emit(LivreState(livres: [],requestState:RequestState.Loading,errorMessage: "" ));
        List<Livre> livres=await livreRepository.deleteLivre(event.id);
        emit(LivreState(livres:livres,requestState: RequestState.Loaded,errorMessage: ""));
      }

    });
  }


}