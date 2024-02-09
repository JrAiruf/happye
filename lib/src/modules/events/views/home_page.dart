import 'package:happye/src/imports.dart';
import 'package:happye/src/modules/events/views/components/frequented_events_list.dart';

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
                  SizedBox(height: height * 0.03),
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
                      AddButton(title: "Adicionar", onTap: () {}),
                    ],
                  ),
                  SizedBox(height: height * 0.05),
                  const Text(
                    "Confira os próximos eventos",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  const HomeEventsList(),
                  SizedBox(height: height * 0.02),
                  const Text(
                    "Eventos que participei:",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                  const FrequentedEventsList()
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
