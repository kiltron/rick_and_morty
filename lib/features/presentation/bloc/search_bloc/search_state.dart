import 'package:equatable/equatable.dart';

import '../../../domain/entities/person_entity.dart';

abstract class PersonSearchState extends Equatable {
  const PersonSearchState();

  @override
  List<Object?> get props => [];
}

class PersonEmpty extends PersonSearchState {}

class PersonSearchLoading extends PersonSearchState {}

class PersonSearchLoaded extends PersonSearchState {
  final List<PersonEntity> person;

  const PersonSearchLoaded({required this.person});

  @override
  List<Object?> get props => [person];
}

class PersonSearchError extends PersonSearchState {
  final String message;

  const PersonSearchError({required this.message});
  @override
  List<Object?> get props => [message];
}
