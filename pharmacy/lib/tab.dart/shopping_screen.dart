
import 'package:flutter/material.dart';
import 'package:health/screens_main/detailes.dart';

class bag extends StatefulWidget {
  const bag({Key? key}) : super(key: key);

  @override
  State<bag> createState() => _bagState();
}
 

class _bagState extends State<bag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
        
        actions: [
          Icon(Icons.shopping_cart_checkout),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('assets/p'),fit: BoxFit.cover)
          ),
          child: Column(
            children: [
              Card(
                
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/azithromycin-500-tablet.avif'), 
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐀𝐳𝐢𝐭𝐡𝐫𝐨𝐦𝐲𝐜𝐢𝐧 '),
                          Text('60'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [

                            
                          
                          ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailes()));
                            },
                           child: Text('Purchase')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/rabi.jpg'), 
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐑𝐚𝐛𝐢𝐩𝐫𝐨𝐬𝐨𝐥'),
                          Text('30'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 40),
                      child: Column(
                        children: [
                          
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('purchase')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/Neopan Tablet,Mefenamic Acid 250mg,Paracetamol 500mg,price,uses,side Effects - Drugcarts.jpg'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐍𝐞𝐨𝐩𝐚𝐧'),
                          Text('10'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                         
                          
                          ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailes()));
                            },
                           child: Text('Purchase')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/moxclave.jpg'), 
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐌𝐨𝐱𝐜𝐥𝐚𝐯𝐞'),
                          Text('100'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left:50),
                      child: Column(
                        children: [
                         ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailes()));
                            },
                           child: Text('Purchase')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/diclofian.png'),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐃𝐢𝐜𝐥𝐨𝐟𝐢𝐧𝐚𝐜'),
                          Text('25'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                       ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailes()));
                            },
                           child: Text('Purchase')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Card(
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      child: Image.asset('assets/livogen.png'), 
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Column(
                        children: [
                          Text('𝐋𝐢𝐯𝐨𝐠𝐞𝐧'),
                          Text('120'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 50),
                      child: Column(
                        children: [
                      
                      ElevatedButton(
                            onPressed: (){
                              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Detailes()));
                            },
                           child: Text('Purchase')
                           )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
