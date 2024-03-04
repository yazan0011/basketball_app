import 'package:flutter/material.dart';
import 'package:flutter_application_1/cubit/counter_cubit.dart';
import 'package:flutter_application_1/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const BasketBall());
}

class BasketBall extends StatelessWidget {
  const BasketBall({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => counterCubit(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: home_page(),
      ),
    );
  }
}

// ignore: camel_case_types
class home_page extends StatelessWidget {
  const home_page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<counterCubit, counterState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: const Color.fromARGB(255, 241, 186, 158),
          appBar: AppBar(
            title: const Text(
              'points counter',
              style: TextStyle(fontFamily: 'PlayfairDisplay'),
            ),
            backgroundColor: Colors.deepOrange,
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<counterCubit>(context).teamApoint}',
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.15,
                              color: Colors.black),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 15,
                            backgroundColor: Colors.deepOrange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<counterCubit>(context)
                                .counterIncrement(team: 'A', buttonNmber: 1);
                          },
                          child: const Text(
                            'add 1 points',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PlayfairDisplay',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            elevation: 15,
                            backgroundColor: Colors.deepOrange,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<counterCubit>(context)
                                .counterIncrement(team: 'A', buttonNmber: 2);
                          },
                          child: const Text(
                            'add 2 points',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PlayfairDisplay',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            elevation: 15,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<counterCubit>(context)
                                .counterIncrement(team: 'A', buttonNmber: 3);
                          },
                          child: const Text(
                            'add 3 points',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PlayfairDisplay',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 500,
                    child: VerticalDivider(
                      color: Color.fromARGB(255, 0, 0, 0),
                      thickness: 2,
                      indent: 30,
                      endIndent: 20,
                    ),
                  ),
                  SizedBox(
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 32,
                            fontFamily: 'PlayfairDisplay',
                          ),
                        ),
                        Text(
                          '${BlocProvider.of<counterCubit>(context).teamBpoint}',
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * 0.15,
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            elevation: 15,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<counterCubit>(context)
                                .counterIncrement(team: 'B', buttonNmber: 1);
                          },
                          child: const Text(
                            'add 1 points',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'PlayfairDisplay',
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            elevation: 15,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<counterCubit>(context)
                                .counterIncrement(team: 'B', buttonNmber: 2);
                          },
                          child: const Text(
                            'add 2 points',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PlayfairDisplay',
                              color: Colors.black,
                            ),
                          ),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.deepOrange,
                            elevation: 15,
                            minimumSize: const Size(150, 50),
                          ),
                          onPressed: () {
                            BlocProvider.of<counterCubit>(context)
                                .counterIncrement(team: 'B', buttonNmber: 3);
                          },
                          child: const Text(
                            'add 3 points',
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'PlayfairDisplay',
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrange,
                  elevation: 15,
                  minimumSize: const Size(150, 50),
                ),
                onPressed: () {
                  BlocProvider.of<counterCubit>(context).resetCounters();
                },
                child: const Text(
                  'Reset',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'PlayfairDisplay',
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        );
      },
      listener: (context, state) {},
    );
  }
}
