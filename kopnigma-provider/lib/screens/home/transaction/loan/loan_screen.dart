import 'package:flutter/material.dart';

class LoanScreen extends StatefulWidget {
  const LoanScreen({Key? key}) : super(key: key);

  @override
  _LoanScreenState createState() => _LoanScreenState();
}

class _LoanScreenState extends State<LoanScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/'),
                        fit: BoxFit.cover
                    )),
                child:  Column(
                  children: [
                    Row(
                      children: [
                        Text(
                            'Loan',
                            style: Theme.of(context).textTheme.headline6
                        ),
                      ],
                    ),

                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 200, 0, 0),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(32, 32, 32, 32),
                                child: Container(height: 100, width: 120,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(onPressed: (){
                                Navigator.pushNamed(context, '/loan-request');
                              }, child: Text('Loan'))
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.fromLTRB(50, 32, 32, 32),
                                child: Container(height: 100, width: 120,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(10),
                                    image: const DecorationImage(
                                      image: AssetImage(
                                          'assets/images/'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(onPressed: (){}, child: Text('Transaction'))
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                )
            )
        ));
  }
}
