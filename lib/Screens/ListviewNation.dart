import 'package:flutter/material.dart';

class ListviewNation extends StatelessWidget {
  const ListviewNation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          child: ListView.builder(
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage(
                        'Images/mountain1.png',
                      ),
                      alignment: Alignment.topLeft),
                ),
                height: 85,
                width: 150,
                margin: EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Padding(
                    padding: const EdgeInsets.only(right: 7),
                    child: Text('Mountain',style: TextStyle( color: Colors.white,fontWeight: FontWeight.bold),),
                  )],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
