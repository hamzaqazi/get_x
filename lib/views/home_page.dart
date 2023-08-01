import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_x/controllers/home_page_controller.dart';

class MyHomePage extends StatelessWidget {
  HomePageController _ = Get.put(HomePageController());
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Counter App"),
      ),
      body: Obx(
        () => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${_.counter.value}',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              // text button to reset counter
              TextButton(
                onPressed: () {
                  _.counter.value = 0;
                  _.counter.refresh();
                },
                child: const Text("Reset Counter"),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _.incrementCounter();
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
