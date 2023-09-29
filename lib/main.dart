import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveApp(
      builder: (context) {
        return MaterialApp(
          theme: ThemeData(
              appBarTheme: AppBarTheme(
                  backgroundColor: Colors.blueAccent,
                  foregroundColor: Colors.white)),
          title: 'Live Test 08',
          home: HomePage(),
        );
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var myItems = [
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
    {
      "img":
          "https://th.bing.com/th/id/OIP.T3yOk_sWauWSOZLUft5EkgHaE8?pid=ImgDet&rs=1",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("News Feed"),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          final isLandscape = orientation == Orientation.landscape;
          final crossAxisCount = isLandscape ? 2 : 1;

          return isLandscape
              ? Row(
                  children: [
                    Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: crossAxisCount,
                                crossAxisSpacing: 0.8,
                                childAspectRatio: isLandscape ? 1.1 : .8,
                              ),
                              itemCount: myItems.length,
                              itemBuilder: (context, index) {
                                return GestureDetector(
                                  child: Container(
                                    margin: const EdgeInsets.all(5),
                                    width: double.infinity,
                                    height: isLandscape ? 100 : 150,
                                    child: Image.network(
                                      myItems[index]['img']!,
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Column(
                  children: [
                    Expanded(
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: crossAxisCount,
                          crossAxisSpacing: 0.8,
                          childAspectRatio: isLandscape ? 0.9 : 1.1,
                        ),
                        itemCount: myItems.length,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            child: Container(
                              margin: const EdgeInsets.all(5),
                              width: double.infinity,
                              height: isLandscape ? 100 : 150,
                              child: Image.network(
                                myItems[index]['img']!,
                                fit: BoxFit.fill,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                );
        },
      ),
    );
  }
}
