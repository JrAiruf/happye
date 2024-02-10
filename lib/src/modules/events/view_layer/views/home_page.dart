import 'package:happye/src/imports.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

final _controller = Modular.get<HomeController>();

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
            PageView(
              physics: const NeverScrollableScrollPhysics(),
              controller: _controller.homePageController,
              children: [
                SizedBox(
                  height: height,
                  width: width,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.02),
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        SizedBox(height: height * 0.02),
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
                        SizedBox(height: height * 0.02),
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
                        SizedBox(height: height * 0.01),
                        const Text(
                          "Eventos que participei:",
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(height: height * 0.01),
                        const FrequentedEventsList(),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: height,
                  width: width,
                  color: Colors.deepPurple,
                ),
                Container(
                  height: height,
                  width: width,
                  color: Colors.deepOrangeAccent,
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: HappyeNavBar(controller: _controller));
  }
}
