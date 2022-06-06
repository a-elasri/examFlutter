
import 'package:examen/model/livre_model.dart';

enum RequestState{Loaded,Loading,Error,NONE}
class LivreState{
  List<Livre> livres;
  RequestState requestState;
  String errorMessage;
  LivreState({required this.livres,required this.requestState, this.errorMessage=""});
}
