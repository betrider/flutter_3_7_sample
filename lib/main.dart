// ignore_for_file: dead_code

import 'package:flutter/material.dart';
import 'package:flutter_application_11/json_destructing.dart';
import 'package:flutter_application_11/object_destructing.dart';
import 'package:flutter_application_11/record.dart';
import 'package:flutter_application_11/sealed.dart';
import 'package:flutter_application_11/usable_switches.dart';

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
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    bool hasNextStep = true;

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => record(),
              child: Text('record'),
            ),
            ElevatedButton(
              onPressed: () => sealed(),
              child: Text('sealed'),
            ),
            ElevatedButton(
              onPressed: () => jsonDestructing(),
              child: Text('json_destructing'),
            ),
            ElevatedButton(
              onPressed: () => usableSwitches(CharCode.slash),
              child: Text('usable siwtches'),
            ),
            ElevatedButton(
              onPressed: () => objectDestructing(),
              child: Text('object_destructing'),
            ),
            ListTile(
              leading: const Icon(Icons.weekend),
              title: const Text("Welcome"),
              enabled: hasNextStep,
              subtitle: hasNextStep ? const Text("Tap to advance.") : null,
              onTap: hasNextStep
                  ? () {
                      print('onTap11');
                    }
                  : null,
              trailing: hasNextStep ? null : const Icon(Icons.stop),
            ),
            //!오류
            ListTile(
              leading: const Icon(Icons.weekend),
              title: const Text("Welcome"),
              // if(hasNextStep) ...(
              //     subtitle: const Text("Tap to advance."),
              //     onTap: () { advance(); },
              // ) else ...(
              //     trailing: const Icon(Icons.stop),
              // )
            ),
          ],
        ),
      ),
    );
  }
}
