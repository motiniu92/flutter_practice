import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routes/myBloc.dart';
import '../routes/myEvents.dart';
import '../routes/myStates.dart';

class PageB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyBloc, MyState>(
      listener: (context, state) {
        if (state is StateC) {
          print("Navigator.of(context).pushNamed('/pageC');");
          Navigator.of(context).pushNamed('/pageC');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
              BlocProvider.of<MyBloc>(context).add(MyEvent.eventA);
            },
          ),
          title: Text(
            'Page B',
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          titleSpacing: 00.0,
          toolbarHeight: 60.2,
          toolbarOpacity: 0.8,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(25),
                bottomLeft: Radius.circular(25)),
          ),
          elevation: 0.00,
          backgroundColor: Colors.greenAccent[400],
        ),
        body: Center(
          child: MaterialButton(
            child: Text('Go to PageC'),
            onPressed: () {
              BlocProvider.of<MyBloc>(context).add(MyEvent.eventC);
            },
          ),
        ),
      ),
    );
  }
}
