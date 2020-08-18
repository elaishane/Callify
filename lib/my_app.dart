class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blue,
        body: Center(
          child: Text(
            "callify",
            textAlign: TextAlign.center,
            maxLines: 1,
            style: Theme.of(context).textTheme.headline4.copyWith(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.normal,
                  textBaseline: TextBaseline.ideographic,
                  letterSpacing: 0.1,
                ),
          ),
        ),
      ),
    );
  }
}
