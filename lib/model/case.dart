import 'package:equatable/equatable.dart';
import 'package:flutter_demo/core/function.dart';

class Case extends Equatable {
  final String? id;
  final String? title;

  Case({
    this.id,
    this.title,
  });

  factory Case.fromJson(Map<String, dynamic> json) => Case(
        id: hiString(json['id']),
        title: hiString(json['title']),
      );

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    return map;
  }

  Case copyWith({
    String? id,
    String? title,
  }) =>
      Case(
        id: id ?? this.id,
        title: title ?? this.title,
      );

  @override
  bool get stringify => true;

  @override
  List<Object?> get props => [id, title];
}
