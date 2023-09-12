import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        color: Colors.redAccent,
        width: double.infinity,
        height: 500,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //crossAxis means horizontal
          mainAxisAlignment: MainAxisAlignment.end, //vertical
          children: [

          // SingleChildScrollView(
          //   padding: const EdgeInsets.all(8.0),
          //   scrollDirection: Axis.horizontal,
          //   child: Row(children: [
          //     Text('Please click this following button'),
          //     SizedBox(width: 10),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //     Container(width: 20,height: 20,color: Colors.redAccent),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //     ElevatedButton(onPressed: (){}, child: Text('click')),
          //   ],),
          // ),

            // SizedBox(
            //   height: 200,
            //   child: Row(
            //       mainAxisAlignment: MainAxisAlignment.center, //horizontal
            //       crossAxisAlignment: CrossAxisAlignment.center, //vertical
            //       children: [
            //
            //     ElevatedButton(onPressed: (){}, child: Text('A')),
            //     SizedBox(width: 20),
            //     ElevatedButton(onPressed: (){}, child: Text('B')),
            //
            //   ]),
            // ),

          // ElevatedButton(onPressed: (){}, child: Text('click')),
          // ElevatedButton(onPressed: (){}, child: Text('click')),
          // ElevatedButton(onPressed: (){}, child: Text('click')),
          // ElevatedButton(onPressed: (){}, child: Text('click')),
            CustomToolBar(),


          ElevatedButton(onPressed: (){}, child: const Text('click')),

            Container(
              color: Colors.yellow,
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                //1 column
                Container(
                  color: Colors.orangeAccent,
                  child: Column(children: [
                    Text('column 1'),
                    Text('column 1'),
                    Text('column 1'),
                    Text('column 1'),
                    Text('column 1'),
                    Text('column 1'),
                  ]),
                ),

                //2 column
                Container(
                  color: Colors.blue,
                  child: Column(children: [
                    Text('column 2'),
                    Text('column 2'),
                    Text('column 2'),
                    Text('column 2'),
                    Text('column 2'),
                    Text('column 2'),
                  ],),
                )


              ],),
            )



        ],),
      )
    );
  }
}

class CustomToolBar extends StatelessWidget {
  const CustomToolBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.white,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
          color: Colors.white,
      border: Border.all(color: Colors.black,width: 1)),
      child: Row(children: [
        Text('Run:'),
        TextButton(onPressed: (){}, child: Text('main.dart')),
        Spacer(),
        IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
        IconButton(onPressed: (){}, icon: Icon(Icons.minimize)),
      ],),
    );
  }
}
