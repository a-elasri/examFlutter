import 'dart:async';
import 'dart:math';

import 'package:examen/model/adherent_model.dart';

class AdherentRepository {
  List<Adherent> adherents = [
    Adherent(id_adherent: 1, nom: "ELASRI", prenom: "Asmaa", email: "asmaa@gmail.com", tel: "067788994"),
    Adherent(id_adherent: 2, nom: "Derouich", prenom: "Majda", email: "majda@gmail.com", tel: "0622334455"),
    Adherent(id_adherent: 3, nom: "Elbahja", prenom: "Hamza", email: "hamza@gmail.com", tel: "0600004455"),
    Adherent(id_adherent: 4, nom: "Elmajni", prenom: "Ahmed", email: "ahmed@gmail.com", tel: "0677334455"),
    Adherent(id_adherent: 5, nom: "ELASRI", prenom: "Hind", email: "hind@gmail.com", tel: "0624567455"),
  ];
  Future<List<Adherent>> allAdherent()async{
    var future= await Future.delayed(Duration(seconds: 1));
      return adherents;
  }

  Future<List<Adherent>> deleteAdherent(int id) async{
    List<Adherent> adherent1 = adherents;
    Adherent adherent = adherent1.where((element) => element.id_adherent==id).first;
    adherent1.remove(adherent);
    var future= await Future.delayed(Duration(milliseconds: 60));
    return adherent1;
  }
}