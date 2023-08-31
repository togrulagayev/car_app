import 'package:car_app/services/cars.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(color: Colors.blue[50]),
        child: SafeArea(
          child: Column(
            children: [
              ListTile(
                leading: const CircleAvatar(
                  foregroundImage: NetworkImage(
                      "https://images.unsplash.com/photo-1633332755192-727a05c4013d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1780&q=80E"),
                ),
                title: const Text("Welcome"),
                subtitle: const Text("Shahinur Rahman"),
                trailing: Container(
                  height: 40,
                  width: 40,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  child: const Icon(Icons.notifications_none),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 10, 18, 0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        isDense: true,
                        contentPadding: const EdgeInsets.fromLTRB(10, 5, 0, 5),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                        ),
                        hintText: "Search your car",
                        hintStyle: const TextStyle(color: Colors.grey),
                        suffixIcon: Container(
                          decoration: const BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.all(
                              Radius.circular(40),
                            ),
                          ),
                          height: 50,
                          width: 50,
                          child: const Icon(Icons.filter, color: Colors.white),
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img2.cgtrader.com/items/1930157/b9a6640926/large/mercedes-benz-car-logo-3d-model-obj-mtl-fbx-ztl.jpg"))),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img2.cgtrader.com/items/1930157/b9a6640926/large/mercedes-benz-car-logo-3d-model-obj-mtl-fbx-ztl.jpg"))),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img2.cgtrader.com/items/1930157/b9a6640926/large/mercedes-benz-car-logo-3d-model-obj-mtl-fbx-ztl.jpg"))),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img2.cgtrader.com/items/1930157/b9a6640926/large/mercedes-benz-car-logo-3d-model-obj-mtl-fbx-ztl.jpg"))),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img2.cgtrader.com/items/1930157/b9a6640926/large/mercedes-benz-car-logo-3d-model-obj-mtl-fbx-ztl.jpg"))),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                          Container(
                            height: 60,
                            width: 60,
                            decoration: const BoxDecoration(
                                color: Colors.black,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(50)),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img2.cgtrader.com/items/1930157/b9a6640926/large/mercedes-benz-car-logo-3d-model-obj-mtl-fbx-ztl.jpg"))),
                          ),
                          const SizedBox(
                            width: 35,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.all(20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Popular car",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "View all",
                          style: TextStyle(
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    FutureBuilder(
                        future: getCars(),
                        builder: (context, snapshot) {
                          return snapshot.hasData
                              ? GridView.builder(
                                  gridDelegate:
                                      const SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    mainAxisSpacing: 10,
                                    crossAxisSpacing: 10,
                                    childAspectRatio: 1 / 1.4,
                                  ),
                                  itemCount: snapshot.data!.length,
                                  itemBuilder: (context, index) {
                                    return Container(
                                      decoration:
                                          BoxDecoration(color: Colors.blue[50]),
                                      child: Column(children: [
                                        // Icon(Icons.favorite_border),
                                        Text(snapshot.data![index].make!)
                                      ]),
                                    );
                                  },
                                )
                              : const CircularProgressIndicator();
                        })
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
