import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_projects/component/customButton.dart';

import '../routes/myBloc.dart';
import '../routes/myEvents.dart';
import '../routes/myStates.dart';

class PageA extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<MyBloc, MyState>(
      listener: (context, state) {
        if (state is StateB) {
          print("Navigator.of(context).pushNamed('/pageB');");
          Navigator.of(context).pushNamed('/pageB');
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          iconTheme: IconThemeData(color: Colors.white),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
            ),
            onPressed: () {
             BlocProvider.of<MyBloc>(context).add(MyEvent.eventC);
            },
          ),
          centerTitle: true,
          title: Text(
            'Page A',
            style: TextStyle(color: Colors.white),
          ),
        ),


        body: Center(
          child: Column(
            children: [
              //========= Button =============
              MaterialButton(
                child: Text('Go to PageB',
                  style: TextStyle(
                      color: Colors.black, fontSize: 20),
                ),
                onPressed: () {
                  BlocProvider.of<MyBloc>(context).add(MyEvent.eventB);
                },
              ),
              //======================

              SizedBox(width: 0.0, height: 60),

              //========= Custom button =============
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: MyCustomButton(),
              ),

              //==========================
              Row(
                children: <Widget>[
                  Flexible(
                    child: Card(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Item name mmmasdaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaammmmmm"),
                          SizedBox(height: 15.0,),
                          Text(
                            "Discount mmmmmmmm",
                          ),
                          SizedBox(height: 5.0,),
                          Text(
                            "Price ,mmmmmmmmmdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfdgfmmmmmmmmm",
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              //======================


            ],
          ),
        ),
      ),
    );
  }
}
