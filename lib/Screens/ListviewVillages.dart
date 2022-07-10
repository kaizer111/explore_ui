import 'package:flutter/material.dart';

class ListviewVillages extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 200,
          child: ListView.builder(
            itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index) => Container(

                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage('Images/konoha.jpg'),alignment: Alignment.topCenter,),
                  borderRadius: BorderRadius.circular(10),
                ),
                height: 170,
                width: 190,
                margin: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text('Knoha',style: TextStyle(fontWeight: FontWeight.bold),),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(Icons.star_outline),
                        ),
                        Text('4.9'),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(Icons.location_city_outlined),
                        Text('Fire NNation'),
                        Text('890',style: TextStyle(color: Colors.deepOrange,fontWeight: FontWeight.bold),),
                        Text('/price'),
                      ],
                    )
                  ],
                ),
              )
          ),
        ),
      ],
    );
  }
}
