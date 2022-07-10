import 'package:explore_ui/Screens/ListviewNation.dart';
import 'package:explore_ui/Screens/ListviewVillages.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('Images/kakshi.jpg'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('Welcome back',style: TextStyle(fontSize: 15),),
                          Icon(Icons.front_hand_outlined),
                        ],
                      ),
                      Text('Kakashi Hatake',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                    ],
                  ),
                ),
                SizedBox(
                  width: 25,
                ),
                CircleAvatar(
                  backgroundColor: Colors.orange[100],
                  radius: 35,
                  child: Icon(Icons.notifications_outlined,size: 40,color: Colors.white),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25),
                  child: Container(
                    height: 60,
                    width: 340,
                    child: TextFormField(
                      decoration: InputDecoration(
                         fillColor: Colors.white70,
                        contentPadding: EdgeInsets.zero,
                        hintText: 'Discover Villages..',
                        prefixIcon: Icon(Icons.search_outlined,color: Colors.orangeAccent,),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                          borderSide: BorderSide(style: BorderStyle.solid,width: 1.5),
                        ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(style: BorderStyle.solid),
                            borderRadius: BorderRadius.all(Radius.circular(1.5))
                          ),
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                  Expanded(child: ListviewNation()),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Text('Explore Villages',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                children: [
                  Text('ALL',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('POPULAR',style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('RECOMENDED',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Text('MOST VIEWED',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text('REC',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(children: [
              Expanded(child: ListviewVillages()),
            ],)
          ],
        ),
      ),
    );
  }
}


