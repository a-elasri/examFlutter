abstract class LivreEvent{}

class LoadAllLivresEvent extends LivreEvent{

}
class FindByCleLivreEvent extends LivreEvent{
  String titre;
  FindByCleLivreEvent({required this.titre});
}
class DeleteByIdLivreEvent extends LivreEvent{
  int id;
  DeleteByIdLivreEvent({required this.id});
}
