import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'components/todo.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blueGrey,
      ),
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});


  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // int _counter = 0;

  void _incrementCounter() {
    // setState(() {
    //   _counter++;
    // });
    print("hi");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
           const Icon(Icons.youtube_searched_for),
           const SizedBox(
            
            width: 20,
           ),
           const Text("youtube",style:TextStyle(color: Color.fromRGBO(47, 53, 59, 0.698),fontFamily: "roboto") ,),
           SizedBox(
            width: 200,
           ),
           Container(
            child: Row(
              children: [
                Icon(Icons.add),
                Icon(Icons.not_accessible)
              ],
            )
            // children :<Widget>[
            //   child:const Icon((Icons.notifications),) ,
            // ]
            // child:const Icon((Icons.notifications),) ,
          //   child:const Icon((Icons.notifications),) ,
          //   child:const Icon((Icons.notifications),) ,
          //   child:const Icon((Icons.notifications),) ,
           )
          ],
        )
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            
            TextButton(
              onPressed: (){},
              child: Text("button")
            ),
            SizedBox(
              height: 40,
              child: Text("sized box"),
            ),
            Text("enter input"),
            DataTable(
              
              columns: <DataColumn>[DataColumn(label: Text("ABC")),DataColumn(label:Text("DEF"))], 
              rows: <DataRow>[DataRow(cells: <DataCell>[
                DataCell(Text("A")),
                DataCell(Text("D")),
              ])]),
            const TextField(textAlign: TextAlign.center,style: TextStyle(color: Color.fromRGBO(10, 200, 30, 0.5)),),
            Image.asset("assets/images/profile.png",height: 100,width: 100,),
            Image.network("https://picsum.photos/id/117/1544/1024"), 
          ],
          
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed:(){},
        child: Icon(Icons.check),
        ),
    );
  }
}
