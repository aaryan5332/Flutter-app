import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(
  home: Home(),
));

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourist Attractions'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      // body: Container(
      //   padding: EdgeInsets.fromLTRB(10.0,20.0,30.0,40.0),
      //   margin: EdgeInsets.all(30.0),
      //   color: Colors.grey,
      //   child: Text('hello'),
      // ),
      // body: Padding(
      //   padding: EdgeInsets.all(30.0),
      //   child: Text('Hello'),
      // ),
      // body: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceAround,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text('Hello world'),
      //     TextButton(
      //       onPressed: () { },
      //       style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.amber)),
      //       child: Text('click me'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(30.0),
      //       color: Colors.cyan,
      //       child: Text('Inside container'),
      //
      //     ),
      //   ],
      // ),
      // body: Column(
      //   // mainAxisAlignment: MainAxisAlignment.end,
      //   // crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Row(
      //       children: [
      //         Text('Hello'),
      //         Text('World in a nutshell'),
      //       ],
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(20.0),
      //       color: Colors.green,
      //       child: Text('one'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(30.0),
      //       color: Colors.amber,
      //       child: Text('two'),
      //     ),
      //     Container(
      //       padding: EdgeInsets.all(40.0),
      //       color: Colors.pink,
      //       child: Text('three'),
      //     ),
      //   ],
      // ),

        //mainAxisAlignment: MainAxisAlignment.center,
        //crossAxisAlignment: CrossAxisAlignment.start,
        //children: [

      drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
          children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          child: Center(
          child: Text(
            'Menu',
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.black,
            ),
          ),
          ),
          ),
            ListTile(
             title: const Text('Home'),
              onTap: () { },
            ),
            ListTile(
              title: const Text('Search'),
              onTap: () { },
            ),
      ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                 label:'Home',
                backgroundColor: Colors.green
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
                backgroundColor: Colors.yellow
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
              backgroundColor: Colors.blue,
            ),
          ],
          // type: BottomNavigationBarType.shifting,
          // currentIndex: _selectedIndex,
          // selectedItemColor: Colors.black,
          // iconSize: 40,
          // onTap: _onItemTapped,
          // elevation: 5
      ),


      body: ListView(
            padding: EdgeInsets.all(20.0),
            children: [
              Container(
                padding: EdgeInsets.all(10.0),
                margin: EdgeInsets.all(10.0),
                color: Colors.grey,
                child: Center(
                  child: Text(
                    'Taj Mahal',
                    style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.black,
                    ),
                ),
              ),
              ),
              Center(
                 child: Image.asset(
                  'assets/image5.jpg',
                  height: 200.0,
                  width: 200.0,
                   fit: BoxFit.cover,
                 ),
              ),
              Text(
                "The Taj Mahal attracts a large number of tourists. UNESCO documented more than 2 million visitors in 2001, which had increased to about 7–8 million in 2014. A two-tier pricing system is in place, with a significantly lower entrance fee for Indian citizens and a more expensive one for foreigners. As of 2022, the fee for Indian citizens was ₹50, for citizens of SAARC and BIMSTEC countries ₹540, for foreign tourists ₹1,100.",
                 style: TextStyle(
                   fontSize: 20.0,
                    ),
              ),
            ],
          ),


      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {  },
      //   child: Text('click'),
      //
      //   backgroundColor: Colors.red[600],
      // ),
    );
  }
}

