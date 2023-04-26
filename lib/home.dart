import 'package:flutter/material.dart ';
class Home extends StatefulWidget {

   Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final bool  mobile =MediaQuery.of(context).size.shortestSide < 600;
    var mobileScreen =MediaQuery.of(context).size.width * 0.90;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar:mobile ?AppBar(backgroundColor: Colors.purple,
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 13.0),
            child: Container(
              width: mobileScreen,
              decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.white70),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: null, icon:Icon(Icons.menu)),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text('Search buildings',style: TextStyle(color: Colors.black87)),
                  ),IconButton(onPressed: (){
                  }, icon: Icon(Icons.search),color: Colors.grey,)
                ],
              ),
            ),
          )
        ],
      ):
      AppBar(
       backgroundColor: Colors.purple,

        elevation: 0,
        actions: [

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 12.0),
            child: Center(
              child: Container(
                width: 340,
                decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Colors.white70),
                margin:  EdgeInsets.only(right: 400),

                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Text('Search buildings',style: TextStyle(color: Colors.black87)),
                    ),IconButton(onPressed: (){

                    }, icon: Icon(Icons.search),color: Colors.grey,)
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Container(
        child: FloatingActionButton(onPressed:(){

        },child: Icon(Icons.add),backgroundColor: Colors.black87),
      ),
      body:mobile ?  Center(

        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: mobileScreen,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: Text('My Buildings',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                        ),Container(
                          margin: EdgeInsets.only(left: 90),
                            child: Text('More',style: TextStyle(color: Colors.blue[500]),))
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                  width:mobileScreen,
                  height: 105,
                  margin: EdgeInsets.all(8),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text('Palmarejo Grande',style: TextStyle(fontSize: 20),)),
                              Container(
                                  margin: EdgeInsets.only(bottom: 25,left: 4),
                                  child: Text('Description')),
                              Container(
                                  margin: EdgeInsets.only(bottom: 5,left: 3),
                                  child: Text('#metadata'))
                            ],
                          ),Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 5,right: 40),
                                    width: 50,
                                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
                                    child: Text('Status',style: TextStyle(color: Colors.blue),textAlign:TextAlign.center,))
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 40,right: 4),
                                  width: 55,
                                  height: 70,
                                  child: Image.asset('assets/imgs/building.png'),
                                ),Container(
                                  width: 27,
                                  child: Image.asset('assets/imgs/car.png'),
                                ),
                              ],
                            ),
                          )
                        ],


                      ),
                    ),
                  ),


                ),
                Container(

                  decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                  width: mobileScreen,
                  height: 105,

                  margin: EdgeInsets.all(8),

                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                  child: Text('Palmarejo Grande',style: TextStyle(fontSize: 20),)),
                              Container(
                                  margin: EdgeInsets.only(bottom: 25,left: 4),
                                  child: Text('Description')),
                              Container(
                                  margin: EdgeInsets.only(bottom: 5,left: 3),
                                  child: Text('#metadata'))
                            ],
                          ),Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 5,right: 40),
                                  width: 50,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
                                  child: Text('Status',style: TextStyle(color: Colors.blue),textAlign:TextAlign.center,))
                            ],
                          ),
                          Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 40,right: 4),
                                  width: 55,
                                  height: 70,
                                  child: Image.asset('assets/imgs/building.png'),
                                ),Container(
                                  width: 27,
                                  child: Image.asset('assets/imgs/car.png'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(

                  decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                  width: mobileScreen,
                  height: 105,

                  margin: EdgeInsets.all(8),

                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(

                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(

                                  child: Text('Palmarejo Grande',style: TextStyle(fontSize: 20),)),
                              Container(
                                  margin: EdgeInsets.only(bottom: 25,left: 4),
                                  child: Text('Description')),
                              Container(
                                  margin: EdgeInsets.only(bottom: 5,left: 3),
                                  child: Text('#metadata'))
                            ],
                          ),Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 5,right: 50),
                                  width: 50,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
                                  child: Text('Status',style: TextStyle(color: Colors.blue),textAlign:TextAlign.center,))
                            ],
                          ),
                          Container(

                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(top: 40,right: 4),
                                  width: 55,
                                  height: 70,
                                  child: Image.asset('assets/imgs/building.png'),
                                ),Container(
                                  width: 27,
                                  child: Image.asset('assets/imgs/car.png'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                  width: mobileScreen,
                  height: 105,
                  margin: EdgeInsets.all(8),
                  child: Container(
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  child: Text('Palmarejo Grande',style: TextStyle(fontSize: 20),)),
                              Container(
                                  margin: EdgeInsets.only(bottom: 25,left: 4),
                                  child: Text('Description')),
                              Container(
                                  margin: EdgeInsets.only(bottom: 5,left: 3),
                                  child: Text('#metadata'))
                            ],
                          ),Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  margin: EdgeInsets.only(bottom: 5,right: 45),
                                  width: 50,
                                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
                                  child: Text('Status',style: TextStyle(color: Colors.blue),textAlign:TextAlign.center,))
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [

                                Container(
                                  margin: EdgeInsets.only(top: 40,right: 10),
                                  width: 55,
                                  height: 70,
                                  child: Image.asset('assets/imgs/building.png'),
                                ),Container(
                                  width: 27,
                                  child: Image.asset('assets/imgs/car.png'),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ):
      Center(
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 340,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        child: Text('My Buildings',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                      ),Text('More',style: TextStyle(color: Colors.blue[500]),)
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                  width: 340,
                  height: 105,
                  margin: EdgeInsets.all(8),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                    child: Text('Palmarejo Grande',style: TextStyle(fontSize: 20),)),
                            Container(
                              margin: EdgeInsets.only(bottom: 25,left: 4),
                                child: Text('Description')),
                            Container(
                              margin: EdgeInsets.only(bottom: 5,left: 3),
                                child: Text('#metadata'))
                          ],
                        ),Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(bottom: 5,right: 40),
                                width: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
                                child: Text('Status',style: TextStyle(color: Colors.blue),textAlign:TextAlign.center,))
                          ],
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Container(



                                margin: EdgeInsets.only(top: 40,right: 4),
                                width: 55,
                                height: 70,
                                child: Image.asset('assets/imgs/building.png'),
                              ),Container(
                                width: 27,
                                child: Image.asset('assets/imgs/car.png'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                  width: 340,
                  height: 105,
                  margin: EdgeInsets.all(8),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                child: Text('Palmarejo Grande',style: TextStyle(fontSize: 20),)),
                            Container(
                                margin: EdgeInsets.only(bottom: 25,left: 4),
                                child: Text('Description')),
                            Container(
                                margin: EdgeInsets.only(bottom: 5,left: 3),
                                child: Text('#metadata'))
                          ],
                        ),Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 5,right: 40),
                                width: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
                                child: Text('Status',style: TextStyle(color: Colors.blue),textAlign:TextAlign.center,))
                          ],
                        ),
                        Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              Container(
                                margin: EdgeInsets.only(top: 40,right: 4),
                                width: 55,
                                height: 70,

                                child: Image.asset('assets/imgs/building.png'),
                              ),Container(
                                width: 27,
                                child: Image.asset('assets/imgs/car.png'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                  width: 340,
                  height: 105,
                  margin: EdgeInsets.all(8),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                                child: Text('Palmarejo Grande',style: TextStyle(fontSize: 20),)),
                            Container(
                                margin: EdgeInsets.only(bottom: 25,left: 4),
                                child: Text('Description')),
                            Container(
                                margin: EdgeInsets.only(bottom: 5,left: 3),
                                child: Text('#metadata'))
                          ],
                        ),Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 5,right: 40),
                                width: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
                                child: Text('Status',style: TextStyle(color: Colors.blue),textAlign:TextAlign.center,))
                          ],
                        ),
                        Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              Container(
                                margin: EdgeInsets.only(top: 40,right: 4),
                                width: 55,
                                height: 70,

                                child: Image.asset('assets/imgs/building.png'),
                              ),Container(
                                width: 27,
                                child: Image.asset('assets/imgs/car.png'),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(border: Border.all(color: Colors.black,)),
                  width: 340,
                  height: 105,
                  margin: EdgeInsets.all(8),
                  child: Container(
                    child: Row(

                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(

                                child: Text('Palmarejo Grande',style: TextStyle(fontSize: 20),)),
                            Container(
                                margin: EdgeInsets.only(bottom: 25,left: 4),
                                child: Text('Description')),
                            Container(
                                margin: EdgeInsets.only(bottom: 5,left: 3),
                                child: Text('#metadata'))
                          ],
                        ),Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                margin: EdgeInsets.only(bottom: 5,right: 40),
                                width: 50,
                                decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Colors.grey),
                                child: Text('Status',style: TextStyle(color: Colors.blue),textAlign:TextAlign.center,))
                          ],
                        ),
                        Container(

                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [

                              Container(
                                margin: EdgeInsets.only(top: 40,right: 4),
                                width: 55,
                                height: 70,

                                child: Image.asset('assets/imgs/building.png'),
                              ),Container(
                                width: 27,
                                child: Image.asset('assets/imgs/car.png'),
                              ),







                            ],


                          ),
                        )
                      ],


                    ),
                  ),


                )

              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [

          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),



        ]),







    );
  }}