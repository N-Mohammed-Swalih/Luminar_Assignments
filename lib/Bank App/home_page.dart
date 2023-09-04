import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: CustomScrollView(slivers: [
      SliverAppBar(
        backgroundColor: Colors.blue,
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        floating: true,
        pinned: false,
        elevation: 0,
        centerTitle: true,
        title: Text(
          "Welcome! N Mohammed Swalih",
          style: GoogleFonts.openSans(
            fontSize: 16,
            fontWeight: FontWeight.w200,
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.qr_code_scanner)),
        ],
      ),
      SliverToBoxAdapter(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * .5,
          child: Stack(
            children: [
              Container(
                color: Colors.red,
                height: 50,
                width: MediaQuery.of(context).size.width,
              ),
              Positioned(
                top: 15,
                left: MediaQuery.of(context).size.width * 0.01,
                right: MediaQuery.of(context).size.width * 0.01,
                child: Card(
                  child: Container(
                    height: 160,
                    width: MediaQuery.of(context).size.width,
                    color: Colors.white38,
                    child: const ListTile(
                      leading: CircleAvatar(
                        minRadius: 50,
                        maxRadius: 75,
                        backgroundImage: NetworkImage(
                          "https://media.licdn.com/dms/image/D5603AQHjAVB_xWJIsw/profile-displayphoto-shrink_800_800/0/1686713033598?e=1699488000&v=beta&t=BJrA3nm3cOJVc7j494C_9dRqfm_MlLf8DvJN1r0GoXs",
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      )
    ])));
  }
}
