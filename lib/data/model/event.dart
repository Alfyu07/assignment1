part of 'models.dart';

class Event extends Equatable {
  final int id;
  final String? name;
  final String? date;
  final String? location;
  final String? picturePath;

  const Event({
    required this.id,
    this.name,
    this.date,
    this.picturePath,
    this.location,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, date, picturePath, picturePath];
}
