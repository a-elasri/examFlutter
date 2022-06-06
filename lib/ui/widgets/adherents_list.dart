
import 'package:examen/bloc/adherents/adherent_bloc.dart';
import 'package:examen/bloc/adherents/adherent_event.dart';
import 'package:examen/bloc/adherents/adherent_state.dart';
import 'package:examen/bloc/livres/livre_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class ListAdherents extends StatelessWidget{
  final AdherentState state;
  ListAdherents({Key? key,required this.state}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  Padding(
          padding: const EdgeInsets.fromLTRB(2, 10, 2, 2),
          child: Expanded(
            child: ListView.builder(
                    itemCount: state.adherents.length,
                    itemBuilder: (context, index) {
                      return Expanded(
                        child: Card(
                          elevation: 2,
                          child: Column(
                                  children: [
                                    Text((state.adherents[index].id_adherent).toString()),
                                    Text(state.adherents[index].nom),
                                    Text(state.adherents[index].prenom),
                                    Text(state.adherents[index].email),
                                    Text(state.adherents[index].tel),
                                    ElevatedButton(onPressed: (){
                                      context.read<AdherentBloc>().add(DeleteByIdAdherentEvent(id: state.adherents[index].id_adherent));
                                    }, child: Icon(Icons.delete))
                                  ],
                              ),

                        ),
                      );
                    }),
          )

    );
  }

}