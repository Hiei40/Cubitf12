import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/cubit/add__cubit.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});



  final String title;
  // final int _counter = 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(title),
      ),
      body: BlocBuilder<AddCubit, AddState>(
  builder: (context, state) {
  int count1=  BlocProvider.of<AddCubit>(context).counter;
    return Center(

        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              count1.toString(),
              style: Theme.of(context).textTheme.headlineMedium,
            ),

           (count1<=0)?const SizedBox():MaterialButton(onPressed: (){

             if(count1<=0)
             {


             }else
             {
               context.read<AddCubit>().decreaseCounter();

             }



           },child: const Icon(Icons.remove_circle_outline_outlined),),
            (count1<=0)?const SizedBox():MaterialButton(onPressed: (){

              if(count1<=0)
              {


              }else
              {
                context.read<AddCubit>().equalzero();

              }



            },child: const Icon(Icons.sailing),),


          ],
        ),
      );
  },
),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          context.read<AddCubit>().incrementCounter();

        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

