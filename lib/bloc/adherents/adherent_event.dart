abstract class AdherentEvent{}

class LoadAllAdherentEvent extends AdherentEvent{
}
class DeleteByIdAdherentEvent extends AdherentEvent{
  int id;
  DeleteByIdAdherentEvent({required this.id});
}
