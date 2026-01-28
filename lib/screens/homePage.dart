import 'package:flutter/material.dart';
import 'package:camp_da7_json/service/api.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: FutureBuilder(
        future: Api().getMeals(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }
          // if (!snapshot.hasData || snapshot.data!.isEmpty) {
          //   return Center(child: Text('No meals found'));
          // }

          return ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Container(
                margin: EdgeInsets.all(8.0),
                height: 500,
                color: Colors.amber,
                child: Column(
                  children: [
                    Text(snapshot.data![index].meal ?? 'no name'),
                    Image.network(snapshot.data![index].mealThumb ?? ''),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}
