import 'dart:async';
import 'dart:math';

import 'package:examen/model/livre_model.dart';

class LivreRepository {
  List<Livre> livres = [
   Livre(id_livre: 1, isbn: "isbn1", titre: "titre1", auteur: "auteur1", anne_publication: new DateTime.now(), nb_exemplaires: 2, prix: 150.00),
    Livre(id_livre: 2, isbn: "isbn2", titre: "titre2", auteur: "auteur2", anne_publication: new DateTime.now(), nb_exemplaires: 5, prix: 200.00),
    Livre(id_livre: 3, isbn: "isbn3", titre: "titre3", auteur: "auteur3", anne_publication: new DateTime.now(), nb_exemplaires: 7, prix: 500.00),
    Livre(id_livre: 4, isbn: "isbn4", titre: "titre4", auteur: "auteur4", anne_publication: new DateTime.now(), nb_exemplaires: 3, prix: 350.00),
    Livre(id_livre: 5, isbn: "isbn5", titre: "titre5", auteur: "auteur5", anne_publication: new DateTime.now(), nb_exemplaires: 4, prix: 50.00),
  ];
  Future<List<Livre>> allLivres()async{
    var future= await Future.delayed(Duration(seconds: 1));
      return livres;
  }

  Future<List<Livre>> livreByCle(String titre)async{
    var future= await Future.delayed(Duration(seconds: 1));
      return livres.where((element) => element.titre==titre).toList();
  }

  Future<List<Livre>> deleteLivre(int id) async{
    List<Livre> livres1 = livres;
    Livre livre = livres1.where((element) => element.id_livre==id).first;
    livres1.remove(livre);
    var future= await Future.delayed(Duration(milliseconds: 60));
    return livres1;
  }
}