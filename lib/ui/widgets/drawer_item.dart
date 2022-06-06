
import 'package:examen/bloc/adherents/adherent_bloc.dart';
import 'package:examen/bloc/adherents/adherent_event.dart';
import 'package:examen/bloc/livres/livre_event.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../bloc/livres/livre_bloc.dart';

class DrawerItem extends StatelessWidget{
   String route;
   String title;
   Icon icon;
   DrawerItem(this.title,this.route,this.icon);
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        if(route=="/livres")
        {
          context.read<LivreBloc>().add(LoadAllLivresEvent());
        }
        if(route=="/adherents")
        {
          context.read<AdherentBloc>().add(LoadAllAdherentEvent());
        }
        Navigator.pushNamed(context, route);
      },
      leading: icon,
      title: Text(
        title,
        style: TextStyle(fontSize: 20, color: Colors.green),
      ),
    );
  }

}