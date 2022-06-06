
import 'package:examen/bloc/livres/livre_bloc.dart';
import 'package:examen/bloc/livres/livre_event.dart';
import 'package:examen/bloc/livres/livre_state.dart';
import 'package:examen/ui/widgets/livre_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../widgets/search.dart';

class LivrePage extends StatelessWidget {
  const LivrePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Livres")),
      body: Column(
          children: [
            Search(),

            BlocBuilder<LivreBloc,LivreState>(
                builder: (context, state) {
                  if(state.requestState==RequestState.Loading){
                    return CircularProgressIndicator();
                  }else if(state.requestState==RequestState.Loaded){
                    return Expanded(
                      child:LivreList(state: state),
                    );
                  }
                  else{
                    return Center(child: Text("Aucun élément"),);
                  }
                }),

          ])
      ,
    );
  }
}
