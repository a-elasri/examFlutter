import 'package:bloc/bloc.dart';
import 'package:examen/bloc/adherents/adherent_event.dart';
import 'package:examen/bloc/adherents/adherent_state.dart';
import 'package:examen/bloc/livres/livre_state.dart';
import 'package:examen/model/adherent_model.dart';
import 'package:examen/repositories/adherent_repository.dart';

class AdherentBloc extends Bloc<AdherentEvent,AdherentState>{
  AdherentRepository adherentRepository;
  AdherentBloc(AdherentState adherentState, this.adherentRepository):super(adherentState){
    on<AdherentEvent>((event, emit) async{
      if(event is LoadAllAdherentEvent){

        emit(AdherentState(adherents: [],requestState:RequestState.Loading,errorMessage: ""));
        try{
          List<Adherent> adherents=await adherentRepository.allAdherent();
          emit(AdherentState(adherents: adherents,requestState: RequestState.Loaded));
        }catch(e){
          emit(AdherentState(adherents: [],requestState: RequestState.Error,errorMessage: e.toString()));
        }
      }

      else if(event is DeleteByIdAdherentEvent){
        emit(AdherentState(adherents: [],requestState:RequestState.Loading,errorMessage: "" ));
        List<Adherent> adherents=await adherentRepository.deleteAdherent(event.id);
        emit(AdherentState(adherents: adherents,requestState: RequestState.Loaded,errorMessage: ""));
      }

    });
  }


}