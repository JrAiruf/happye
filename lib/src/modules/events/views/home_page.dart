import 'package:happye/src/imports.dart';
import 'package:happye/src/modules/events/views/components/home_events_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String userName = "Júnior";
    final height = MediaQuery.sizeOf(context).height;
    final width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: height * 0.3,
            color: Colors.black,
          ),
          SizedBox(
            height: height,
            width: width,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.02),
              child: ListView(
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  SizedBox(height: height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Olá, $userName!",
                        style: const TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      AddButton(title: "Adicionar", onTap: (){}),
                    ],
                  ),
                  HomeEventsList()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
