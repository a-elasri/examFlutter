import 'package:examen/bloc/adherents/adherent_bloc.dart';
import 'package:examen/bloc/adherents/adherent_state.dart';
import 'package:examen/bloc/livres/livre_state.dart';
import 'package:examen/repositories/adherent_repository.dart';
import 'package:examen/repositories/livre_repository.dart';
import 'package:examen/ui/pages/about.dart';
import 'package:examen/ui/pages/adherents_page.dart';
import 'package:examen/ui/pages/home.dart';
import 'package:examen/ui/pages/livres_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/livres/livre_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(create: (context)=>LivreBloc( LivreState(livres: [], requestState:RequestState.NONE, errorMessage: ""), LivreRepository())),
          BlocProvider(create: (context)=>AdherentBloc(AdherentState(adherents: [], requestState:RequestState.NONE, errorMessage: ""), AdherentRepository())),
        ],
        child: MaterialApp(
          theme: ThemeData(
              primarySwatch: Colors.green
          ),
          routes: {
            "/":(context)=>Home(),
            "/livres":(context)=> LivrePage(),
            "/adherents":(context)=>AdherentsPage(),
            "/about":(context)=>About(),
          },
        ));
  }
}


