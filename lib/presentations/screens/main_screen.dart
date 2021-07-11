part of 'screens.dart';

class MainScreen extends StatefulWidget {
  final User? user;
  final Transaction transaction;

  const MainScreen(
      {Key? key, required this.user, this.transaction = const Transaction()})
      : super(key: key);

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
              width: double.infinity,
              color: orangeColor,
            ),
          ),
          Center(
            child: Column(
              children: [
                const SizedBox(height: 40),
                Container(
                  padding: const EdgeInsets.all(10),
                  width: 110,
                  height: 110,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/elips.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage(
                      widget.user?.picturePath ?? 'assets/wahyu.jpg',
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  widget.user?.name ?? "User",
                  style: text16.copyWith(
                    color: whiteColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 120),
                Text('What would you like to do?', style: text16),
                const SizedBox(height: 16),
                CustomPrimaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => EventScreen(
                          user: widget.user,
                          transaction: widget.transaction,
                        ),
                      ),
                    );
                  },
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(widget.transaction.event?.name ?? "Select Event"),
                ),
                const SizedBox(height: 20),
                CustomSecondaryButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => GuestScreen(
                          user: widget.user,
                          transaction: widget.transaction,
                        ),
                      ),
                    );
                  },
                  margin: const EdgeInsets.symmetric(horizontal: 40),
                  child: Text(widget.transaction.guest?.name ?? "Select Guest"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
