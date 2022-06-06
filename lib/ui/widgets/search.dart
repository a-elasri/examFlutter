import 'package:examen/bloc/livres/livre_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_bloc.dart';
import '../../bloc/livres/livre_state.dart';

class Search extends StatelessWidget{
  TextEditingController mcController=TextEditingController();

  Search({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: const EdgeInsets.all(14.0),
          child: Padding(padding: EdgeInsets.fromLTRB(0, 10, 0, 10),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: mcController,
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.book),
                        hintText: "Search",
                        labelText: "Search..",
                    ),
                  ),
                ),

                MaterialButton(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                    color: Colors.green,
                    textColor: Colors.white,
                    minWidth: 65,
                    onPressed: () {
                      context.read<LivreBloc>().add(FindByCleLivreEvent(titre: mcController.text));
                    },
                    child: Icon(Icons.search)),
              ],
            ),
          )
    );
  }

}