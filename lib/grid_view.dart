import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridViewCustom(),
  ));
}

class GridViewCustom extends StatelessWidget {
  GridViewCustom({super.key});
  var networkimage = [
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRrPIGZhsK1nCw3wldyDWI0LQZX74D6LiwIy90DlHQYyzPrrs0Y",
    "https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcR-vFY0KArN3kw3AR-QvAiKOmeR0z3gMcN7ibx7SHDwn72YjbSY",
    "https://t2.gstatic.com/images?q=tbn:ANd9GcQDJxMn7tKEHez1BRASzVKZHCQ5KL0Lcoei6dhryfcFk96wawfl",
    "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcRDvbo0iURioB3ZGuTAMfaVO-YLCF1JQN-lsA5Uw2Cw4QOPBxwX",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQiyFXgnjwKTLlS_QL6BprqzYFRiTC1XczYlz63OXtEovck-mEI",
    "https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcScfLZocOLu1SvlaUsVx7f0VT8iVtMaZ5ew11gCaiK3SF703qJ2",
  ];
  var productprice = ["72", "258", "58", "67", "43", "35"];
  var productname = [
    "Whitney Belt",
    "Vagabond Sack",
    "Stella",
    "Garden Strand",
    "Strut Earring",
    "Varsity Socks"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        actions: [
          Icon(
            Icons.search,
          ),
          SizedBox(
            width: 20,
          ),
          Icon(Icons.sort),
          SizedBox(
            width: 20,
          ),
        ],
        title: Text("SHRINE"),
      ),
      body: GridView.custom(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        childrenDelegate: SliverChildListDelegate(
          List.generate(
            6,
            (index) => Card(
              elevation: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(networkimage[index]),
                        fit: BoxFit.cover,
                      )),
                ),
                const Divider(thickness: 0.4,color: Colors.grey),
                Container(
                  width: 200,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(productname[index],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16)),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Text(
                    "\$ " + productprice[index],
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
