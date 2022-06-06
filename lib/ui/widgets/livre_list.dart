import 'dart:html';

import 'package:examen/bloc/livres/livre_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_bloc.dart';

class LivreList extends StatelessWidget{
  final LivreState state;

  const LivreList({Key? key,required this.state}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
            padding: const EdgeInsets.fromLTRB(2, 10, 2, 2),
            child: Expanded(
              child: ListView.builder(
                  itemCount: state.livres.length,
                  itemBuilder: (context, index) {
                    return Expanded(
                      child: Card(
                        elevation: 2,
                        child: Column(
                          children: [
                            Text((state.livres[index].id_livre).toString()),
                            Text(state.livres[index].isbn),
                            Text(state.livres[index].titre),
                            Text((state.livres[index].nb_exemplaires).toString()),
                            ElevatedButton(onPressed: (){
                              context.read<LivreBloc>().livreRepository.deleteLivre(state.livres[index].id_livre);
                            }, child: Icon(Icons.delete_sweep_outlined))
                          ],
                        ),
                      ),
                    );
                  }),
            )

    );
  }

}