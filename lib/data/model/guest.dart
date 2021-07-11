part of 'models.dart';

class Guest extends Equatable {
  final int id;
  final String? name;
  final String? birthDate;
  final String? picturePath;

  const Guest({required this.id, this.name, this.birthDate, this.picturePath});

  @override
  // TODO: implement props
  List<Object?> get props => [id, name, birthDate, picturePath];
}
