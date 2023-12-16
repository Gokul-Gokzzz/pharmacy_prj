import 'package:flutter/material.dart';
import 'package:health/screens_main/health_care.dart';
import 'package:health/screens_main/list_medicines.dart';
import 'package:health/screens_main/offer_zone.dart';
import 'package:health/screens_main/product_screen.dart';
import 'package:health/tab.dart/app_bar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/bg1.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(10),
                child: TextFormField(
                  decoration: InputDecoration(
                    fillColor: const Color.fromARGB(115, 78, 74, 74),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: '𝕾𝖊𝖆𝖗𝖈𝖍 𝖋𝖔𝖗 𝖒𝖊𝖉𝖎𝖈𝖎𝖓𝖊𝖘',
                    suffixIcon: const Icon(Icons.search),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.width * 0.2,
                  bottom: MediaQuery.of(context).size.width * 0.2,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _buildCategory(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => ProductPage()),
                        );
                      },
                      imagePath: 'assets/medicines.png',
                      categoryName: '𝐌𝐞𝐝𝐢𝐜𝐢𝐧𝐞',
                    ),
                    _buildCategory(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => const Health()),
                        );
                      },
                      imagePath: 'assets/istockphoto-1421629383-170667a.png',
                      categoryName: '𝐇𝐞𝐚𝐥𝐭𝐡𝐜𝐚𝐫𝐞',
                    ),
                  ],
                ),
              ),
              _buildButton(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const List_Of_Medicines()),
                  );
                },
                buttonText: '𝐅𝐫𝐞𝐪𝐮𝐞𝐧𝐭𝐥𝐲 𝐛𝐨𝐮𝐠𝐡𝐭',
              ),
              const SizedBox(height: 50),
              _buildButton(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => const Offer()),
                  );
                },
                buttonText: '𝐨𝐟𝐟𝐞𝐫 𝐳𝐨𝐧𝐞',
                icon: Icons.percent_outlined,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategory({required VoidCallback onTap, required String imagePath, required String categoryName}) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            // height: MediaQuery.of(context).size.width * 0.35,
            // width: MediaQuery.of(context).size.width * 0.35,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
                width: 2,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.5),
                  spreadRadius: 2,
                  blurRadius: 5,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),
          Text(
            categoryName,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  Widget _buildButton({required VoidCallback onTap, required String buttonText, IconData? icon}) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.only(
          // top: MediaQuery.of(context).size.width * 0.1,
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3),
              ),
            ],
            border: Border.all(width: 2),
            color: Colors.grey,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  buttonText,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                if (icon != null) ...[
                  const SizedBox(width: 10),
                  Icon(icon),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
