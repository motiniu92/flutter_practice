import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../routes/myBloc.dart';
import '../routes/myEvents.dart';
import '../routes/myStates.dart';

class PageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyBloc, MyState>(
      listener: (context, state) {
        if (state is StateA) {
          print("Navigator.of(context).pushNamed('/pageA');");
          Navigator.of(context).pushNamed('/');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text('Page C'),
          centerTitle: true,
        ),
        body: Center(
          child: MaterialButton(
            child: Text('Go to PageA'),
            onPressed: () {
              BlocProvider.of<MyBloc>(context).add(MyEvent.eventB);
            },
          ),
        ),
      ),
    );
  }
}
