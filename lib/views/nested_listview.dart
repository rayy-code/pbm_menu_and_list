import 'package:flutter/material.dart';

class NestedListview extends StatefulWidget{

  const NestedListview({super.key});

  @override
  State<NestedListview> createState() => _NestedListViewState();
}

class _NestedListViewState extends State<NestedListview>
{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Dhihya Rayyanda - ListView Nested"),
        backgroundColor: Colors.lightBlueAccent,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 20.0, left: 15.0),
            child: Text("Headline News"),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Container(
                    width: 200.0,
                    height: 150.0,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("images/canyon-1740973_1280.jpg"),
                        fit: BoxFit.cover
                      )
                    ),  
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 15.0),
                  child: Container(
                    width: 200.0,
                    height: 150.0,
                    decoration: const BoxDecoration(
                      color: Colors.grey,
                      image: DecorationImage(
                        image: AssetImage("images/boat-4899802_1280.jpg"),
                        fit: BoxFit.cover,
                      )
                    ),  
                  ),
                ),

              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 15.0,left:  15.0),
            child: Text("List All News"),
          ),

          //membuat listview di dalam listview
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ListTile(
                leading: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration:const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage("images/canyon-1740973_1280.jpg"),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                title: const Text("News 1"),
                subtitle: const Text("Deskripsi pertama"),
                trailing: const Icon(Icons.bookmark),
              ),
              ListTile(
                leading: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration:const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: AssetImage("images/lake-6701636_1280.jpg"),
                      fit: BoxFit.cover
                    ),
                  ),
                ),
                title: const Text("News 2"),
                subtitle: const Text("Deskripsi kedua"),
                trailing: const Icon(Icons.bookmark),
              ),
            ],
          )
        ],
      ),
    );
  }
}