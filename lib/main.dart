import 'package:counter_app/contexts/counter_context.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<CounterContext>(create: (_) => CounterContext(), child: MyHomePage(title: 'Counter Page',),),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({this.title});

  final String title;


  @override
  Widget build(BuildContext context) {
    final counterContext = Provider.of<CounterContext>(context, listen: false);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CounterContext>(
              builder: (context, value, child) {
                return Text(
                  '${value.counter.value}',
                  style: Theme.of(context).textTheme.display1,
                );
              }
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: counterContext.increment,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
