import 'package:flutter/material.dart';
import 'package:registration_app/util/utils.dart';
import 'package:registration_app/widgets/general_widget.dart';

import '../model/categories_model.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home Page',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  Icon(Icons.alarm)
                ],
              ),
              const Text(
                'Choose your course right way',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 45,
                child: TextField(
                  cursorColor: Colors.grey,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      hintText: 'Search',
                      hintStyle:
                          const TextStyle(color: Colors.grey, fontSize: 18),
                      prefixIcon: const Icon(Icons.search)),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                child: GridView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (BuildContext context, int index) {
                    return GeneralWidget.categoriesItem(
                      Utils.categoriesList()[index],
                    );
                  },
                  itemCount: Utils.categoriesList().length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                ),
              ),
              const Text('Recommended Course',
                  style: TextStyle(fontSize: 19, fontWeight: FontWeight.w400)),
              const Row(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 3, 0),
                    child: Text('You may also like this',
                        style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                  ),
                  Icon(
                    Icons.ac_unit_sharp,
                    size: 12,
                    color: Colors.grey,
                  )
                ],
              ),
              SizedBox(
                height: 170,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: Utils.coursesList().length,
                  itemBuilder: (BuildContext context, int index) {
                    return GeneralWidget.courseItem(
                      Utils.coursesList()[index]
                    );
                  },

                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
