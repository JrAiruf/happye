import 'package:happye/src/imports.dart';

class HappyeNavBar extends StatelessWidget {
  const HappyeNavBar({super.key, required this.controller});

  final HomeController controller;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controller.pageIndex,
        builder: (_, c) {
          return BottomNavigationBar(
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            currentIndex: controller.pageIndex.value,
            onTap: (value) {
              controller.homePageController.animateToPage(
                value,
                duration: const Duration(milliseconds: 400),
                curve: Curves.easeOutSine,
              );
              controller.pageIndex.value = value;
            },
            iconSize: 30,
            backgroundColor: Colors.black,
            items: [
              BottomNavigationBarItem(
                label: "Eventos",
                icon: Icon(
                  Icons.manage_search_outlined,
                  color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                label: "Palestrantes",
                icon: Icon(
                  Icons.people,
                  color: Colors.white,
                ),
              ),
              BottomNavigationBarItem(
                label: "Contatos",
                icon: Icon(
                  Icons.quick_contacts_mail_outlined,
                  color: Colors.white,
                ),
              ),
            ],
          );
        });
  }
}
