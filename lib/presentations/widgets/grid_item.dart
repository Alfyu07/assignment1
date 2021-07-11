part of 'widgets.dart';

class GridItem extends StatelessWidget {
  final Guest guest;
  const GridItem({
    Key? key,
    required this.guest,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 210,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: const [
            BoxShadow(spreadRadius: 3, blurRadius: 15, color: Colors.black12)
          ]),
      child: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(8), topRight: Radius.circular(8)),
                image: DecorationImage(
                    image: AssetImage(guest.picturePath ?? "assets/andi.jpeg"),
                    fit: BoxFit.cover),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            width: 200,
            child: Text(
              guest.name ?? "Guest Name",
              style: text16.copyWith(
                fontWeight: FontWeight.w600,
                color: blackGrayColor.withOpacity(0.8),
              ),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16),
            width: 200,
            child: Text(
              guest.birthDate ?? "Birthdate",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  color: blackGrayColor.withOpacity(0.8)),
              maxLines: 1,
              overflow: TextOverflow.clip,
            ),
          ),
        ],
      ),
    );
  }
}
