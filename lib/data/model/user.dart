part of 'models.dart';

class User extends Equatable {
  final int id;
  final String? name;
  final String? picturePath;

  const User({required this.id, this.name, this.picturePath});
  @override
  // TODO: implement props
  List<Object?> get props => [id, name, picturePath];
}
