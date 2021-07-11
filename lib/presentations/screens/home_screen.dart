part of 'screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      body: Stack(
        children: [
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 300,
              color: orangeColor,
            ),
          ),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Eventy',
                  style: text24.copyWith(
                      color: whiteColor, fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Find your dream event and guest here',
                  style: text14.copyWith(
                      color: whiteColor, fontWeight: FontWeight.w500),
                )
              ],
            ),
          )),
          Container(
            margin: const EdgeInsets.only(top: 300),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Center(
                    child: Text(
                      'We would like to know you',
                      style: text16,
                    ),
                  ),
                  const SizedBox(height: 20),
                  CustomTextField(
                    controller: nameController,
                    hintText: "What is your name",
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                  ),
                  const SizedBox(height: 24),
                  CustomPrimaryButton(
                    onPressed: () {
                      final User user = User(
                        id: 1,
                        name: nameController.text,
                        picturePath: 'assets/wahyu.jpg',
                      );
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              MainScreen(user: user),
                        ),
                      );
                    },
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    child: const Text('Continue'),
                  )
                ],
              ),
            ),
          )
          // SafeArea(child: child)
        ],
      ),
    );
  }
}
