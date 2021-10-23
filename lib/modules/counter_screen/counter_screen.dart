import 'package:flutter/material.dart';
import 'package:flutter_application_1/modules/counter_screen/counter_controller.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class CounterScreen extends StatelessWidget {
  final counterController = Get.put(CounterController());
  CounterScreen({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            GestureDetector(
              onTap: counterController.onClickText,
              child: const Text(
                'You have pushed the button this many times:',
              ),
            ),
            GetBuilder<CounterController>(
              builder: (controller) {
                return Text(
                  '${counterController.counterValue}',
                  style: Theme.of(context).textTheme.headline4,
                );
              },
            ),
            MaterialButton(
              onPressed: counterController.onClickNext,
              child: const Text("Go to home screen"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterController.onClickFloatingAction,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
