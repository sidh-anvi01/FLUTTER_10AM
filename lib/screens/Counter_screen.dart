// import every package wchich we need

class counter_screen extends StatefulWidget {
  const counter_screen({super.key});

  @override
  State<counter_screen> createState() => _counter_screenState();
}

class _counter_screenState extends State<counter_screen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Counter Screen"),


          Text("  ${context.watch<CounterProvider>().count}  "),

          ElevatedButton(
            onPressed: (){
              context.read<CounterProvider>().increament();
            },
            child:Text("increament ")
          ),
          ElevatedButton(
              onPressed: (){
                context.read<CounterProvider>().decreament();
              },
              child:Text("decreament ")
          ),

        ],
      ),
    );
  }
}
