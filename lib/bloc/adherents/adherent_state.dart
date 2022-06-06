import 'package:examen/model/adherent_model.dart';

import '../livres/livre_state.dart';

class AdherentState{
  List<Adherent> adherents;
  RequestState requestState;
  String errorMessage;
  AdherentState({required this.adherents,this.requestState=RequestState.NONE, this.errorMessage=""});
}
