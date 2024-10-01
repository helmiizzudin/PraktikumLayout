import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  //const MyApp ({Key? Key}) : super(key: key);
  const MyApp({super.key});

Widget build(BuildContext context){
  //titlesection
  Widget titlesection = Container(
  padding:
  const EdgeInsets.all(16.0),
  child: Row(
    children: [
      Expanded(child: 
        Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: 
         [Container(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: const Text(
            'Danau Toba', 
            style: TextStyle(
              fontWeight: FontWeight.bold
              ),
            ),
          ),
          const Text(
            'Sumatera Utara,Indonesia',
            style: TextStyle(
              color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
      Icon(
        Icons.star,
        color: Colors.red[500],
      ),
      const Text('41')
    ],
  )
  );
  // bottom
 Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }
  Color color = Theme.of(context).primaryColor;

Widget buttonSection = Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: [
    _buildButtonColumn(color, Icons.call, 'CALL'),
    _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
    _buildButtonColumn(color, Icons.share, 'SHARE'),
  ],
);
  //teks
   Widget textSection = Container(
  padding: const EdgeInsets.all(32),
  child: const Text(
    'Danau Toba adalah sebuah danau vulkanik yang terletak di Provinsi Sumatera Utara,Indonesia.'
    'Danau ini memiliki keindahan alam yang sangat menakjubkan dengan pemandangan pegunungan yang hijau dan jernihnya air danau.'
    'Danau Toba merupakan destinasi wisata super prioritas yang memiliki potensi alam dan keunikan budaya yang menjadi daya tarik' 
    'bagi para wisatawan yang datang ke Indonesia',
    softWrap: true,
  ),
);
  return MaterialApp(
    title: 'Flutter Layout Demo',
    home: Scaffold(
      appBar: AppBar(
        title: const Text ('Helmi Izzuddin | 362358302109'),
      ),
      body: ListView(
        children: [
          Image.asset(
            'assets/image/danau.jpeg',
            width: 300,
            height: 200,
            fit: BoxFit.cover,
            ),
            titlesection,
            buttonSection,
            textSection
        ],
      ),
    ),
  );
}
}