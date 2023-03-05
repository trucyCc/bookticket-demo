import 'package:flutter/material.dart';

// 程序的入口
void main() {
  runApp(const MyApp());
}
/*
  Stateless Widget
    无状态的组件
    其状态是来自【父组件】并且使用【final变量进行存储】
    当组件被Build的时候，就使用这些【不可变】的数据来生成UI
    因为数据是不可变的，所以不会在运行中更新UI状态
 */
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    /*
      MaterialApp
        构建了基本的轮廓，主题和色彩
    */
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      /*
        程序入口
      */
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/*
  Stateful Widget
    有状态的组件
    其状态会在Widget生命周期中发生变化，会更新UI
    对于有状态的组件而言，状态的管理有三种模式：自己管理，父组件管理，混合管理
*/
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/*
  State<>
    状态的具体实现
*/
class _MyHomePageState extends State<MyHomePage> {
  // 有状态变量
  int _counter = 0;

  // 通过setState修改状态变量能够立刻更新相关UI的状态
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      // 按钮
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter, // 按钮回调
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
