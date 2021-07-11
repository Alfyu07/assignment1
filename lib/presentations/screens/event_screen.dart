part of 'screens.dart';

class EventScreen extends StatefulWidget {
  final User? user;
  final Transaction transaction;
  const EventScreen({Key? key, this.user, required this.transaction})
      : super(key: key);

  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backColor,
      appBar: AppBar(
        backgroundColor: backColor,
        title: Text('Event', style: text20),
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
          child: ListView.builder(
            itemCount: mockEvents.length,
            itemBuilder: (BuildContext context, int index) => GestureDetector(
              onTap: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => MainScreen(
                      user: widget.user,
                      transaction: widget.transaction.copyWith(
                        event: mockEvents[index],
                      ),
                    ),
                  ),
                );
              },
              child: Container(
                height: 80,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: whiteColor,
                ),
                margin: const EdgeInsets.only(top: 8.0),
                child: ListTile(
                  leading: Image.network(
                    mockEvents[index].picturePath ??
                        "https://pertaniansehat.com/v01/wp-content/uploads/2015/08/default-placeholder.png",
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        mockEvents[index].name ?? "Event",
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                      Text(
                        mockEvents[index].location ?? "Event",
                        style: TextStyle(
                          fontSize: 12,
                          color: blackGrayColor.withOpacity(0.8),
                          fontWeight: FontWeight.w400,
                        ),
                        maxLines: 1,
                        overflow: TextOverflow.clip,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )),
    );
  }
}
