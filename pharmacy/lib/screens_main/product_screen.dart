
import 'package:flutter/material.dart';
import 'package:health/tab.dart/shopping_screen.dart';

class Product extends StatefulWidget {
  const Product({Key? key}) : super(key: key);

  @override
  State<Product> createState() => _ProductState();
}
  // String qtyAzithromycin = '1';
  // String qtyRabiprosol = '2';
  // String qtyNeopan = '3';
  // String qtyMoxclave = '4';
  // String qtyDiclofianac = '5';
  // String qtyLivogen = '6';

String qty = '1';

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product'),
        
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>bag()));
            },
             icon: Icon(
            Icons.shopping_cart_checkout_outlined))
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
                          Row(
                            children: [
                              Text('𝐐𝐭𝐲 - '),
                              DropdownButton<String>(
                                value: qty,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    qty = newValue!;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text(' 1'),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text(' 2'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
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
                          Row(
                            children: [
                              Text('𝐐𝐭𝐲 - '),
                              DropdownButton<String>(
                                value: qty,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    qty = newValue!;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text(' 1'),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text(' 2'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
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
                          Row(
                            children: [
                              Text('𝐐𝐭𝐲 - '),
                              DropdownButton<String>(
                                value: qty,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    qty = newValue!;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text(' 1'),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text(' 2'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
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
                          Row(
                            children: [
                              Text('𝐐𝐭𝐲 - '),
                              DropdownButton<String>(
                                value: qty,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    qty = newValue!;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text(' 1'),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text(' 2'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
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
                          Row(
                            children: [
                              Text('𝐐𝐭𝐲 - '),
                              DropdownButton<String>(
                                value: qty,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    qty = newValue!;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text(' 1'),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text(' 2'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
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
                          Row(
                            children: [
                              Text('𝐐𝐭𝐲 - '),
                              DropdownButton<String>(
                                value: qty,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    qty = newValue!;
                                  });
                                },
                                items: [
                                  DropdownMenuItem(
                                    value: "1",
                                    child: Text(' 1'),
                                  ),
                                  DropdownMenuItem(
                                    value: "2",
                                    child: Text(' 2'),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: (){},
                           child: Text('𝐀𝐝𝐝 𝐭𝐨 𝐜𝐚𝐫𝐭')
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
