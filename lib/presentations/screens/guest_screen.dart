part of 'screens.dart';

class GuestScreen extends StatefulWidget {
  final User? user;
  final Transaction transaction;
  const GuestScreen({Key? key, required this.user, required this.transaction})
      : super(key: key);

  @override
  _GuestScreenState createState() => _GuestScreenState();
}

class _GuestScreenState extends State<GuestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        backgroundColor: backColor,
        title: Text('Guest', style: text20),
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new, color: blackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: mockGuest
              .map(
                (e) => GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => MainScreen(
                            user: widget.user,
                            transaction: widget.transaction.copyWith(guest: e),
                          ),
                        ),
                      );
                    },
                    child: GridItem(guest: e)),
              )
              .toList(),
        ),
      ),
    );
  }
}
