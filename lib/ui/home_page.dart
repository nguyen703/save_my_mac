import 'package:flutter/cupertino.dart';
import 'package:macos_ui/macos_ui.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _tabIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MacosWindow(
      titleBar: const TitleBar(
        height: 48,
        title: Text(
          "Title",
          style: TextStyle(fontSize: 16),
        ),
      ),
      child: MacosScaffold(
        children: [
          ContentArea(
            builder: ((context, scrollController) {
              return const Center(
                child: Text('Home'),
              );
            }),
          ),
        ],
      ),
    );
  }
}
