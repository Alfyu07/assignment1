import 'package:equatable/equatable.dart';

import 'models.dart';

class Transaction extends Equatable {
  final Event? event;
  final Guest? guest;

  const Transaction({this.event, this.guest});

  Transaction copyWith({
    Event? event,
    Guest? guest,
  }) =>
      Transaction(
        event: event ?? this.event,
        guest: guest ?? this.guest,
      );
  @override
  // TODO: implement props
  List<Object?> get props => [event, guest];
}
