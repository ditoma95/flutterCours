import 'package:design/widgets/program.dart';
import 'package:flutter/material.dart';

class Connexion extends StatelessWidget {
  const Connexion({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Stack(
          children: [
            Container(
              child: Scaffold(
                appBar: AppBar(),
              ),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Container(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFABE59876),
                          Color.fromARGB(208, 0, 0, 0),
                        ]
                      )
                    ),
                  ),
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(15, 180, 15, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 1.6,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 62, 59, 50),
                      borderRadius: BorderRadius.circular(25),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(radius: 50,
                          backgroundImage: AssetImage("images/lock.png"),
                        ),
                        Text("Se connecter", style: TextStyle(color: Colors.white, fontSize:18),),
                        SizedBox(height: 30,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              labelText: "Enter your email",
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                
                                borderRadius: BorderRadius.circular(25),
                              ),
                              prefixIcon: Icon(Icons.email, color: Colors.white,),
                            ),
                            
                          ),
                        ),
                        SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: TextField(
                            keyboardType: TextInputType.name,
                            decoration: InputDecoration(
                              labelText: "Enter your password",
                              labelStyle: TextStyle(
                                color: Colors.white,
                              ),
                              border: OutlineInputBorder(
                                
                                borderRadius: BorderRadius.circular(25),
                              ),
                              prefixIcon: Icon(Icons.lock, color: Colors.white,),
                            ),
                            
                          ),
                        ),
                        SizedBox(height: 20,),
                        Material(
                          borderRadius: BorderRadius.circular(25),
                          child: InkWell(
                            onTap: () {
                              Navigator.push(context, MaterialPageRoute(builder: (context) => ProgramWidget()));
                            },
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 10,
                                horizontal: 25,
                              ),
                              decoration:  const BoxDecoration(
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(25), bottomRight: Radius.circular(25)),
                                color: Colors.red,
                                boxShadow: [
                                  BoxShadow(
                                    //color: Colors.white,
                                    blurRadius: 15,
                                    offset: Offset(1, 5)
                                  )
                                ]

                                
                              ),
                              child: Text("connexion", style: TextStyle(color: Colors.white, fontSize: 22),),
                            ),
                          ),
                        )
                      ],
                    ),

                  ),
                )

              ],
            )
          ],
        ),
      ),
      
    );
  }
}