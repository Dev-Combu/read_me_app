// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'reading_book_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReadingBookDto {
  String get id;
  String get author;
  String get bookTitle;
  String get title;
  String get image;
  String get detail;
  String get date;

  /// Create a copy of ReadingBookDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ReadingBookDtoCopyWith<ReadingBookDto> get copyWith =>
      _$ReadingBookDtoCopyWithImpl<ReadingBookDto>(
          this as ReadingBookDto, _$identity);

  /// Serializes this ReadingBookDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ReadingBookDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, author, bookTitle, title, image, detail, date);

  @override
  String toString() {
    return 'ReadingBookDto(id: $id, author: $author, bookTitle: $bookTitle, title: $title, image: $image, detail: $detail, date: $date)';
  }
}

/// @nodoc
abstract mixin class $ReadingBookDtoCopyWith<$Res> {
  factory $ReadingBookDtoCopyWith(
          ReadingBookDto value, $Res Function(ReadingBookDto) _then) =
      _$ReadingBookDtoCopyWithImpl;
  @useResult
  $Res call(
      {String id,
      String author,
      String bookTitle,
      String title,
      String image,
      String detail,
      String date});
}

/// @nodoc
class _$ReadingBookDtoCopyWithImpl<$Res>
    implements $ReadingBookDtoCopyWith<$Res> {
  _$ReadingBookDtoCopyWithImpl(this._self, this._then);

  final ReadingBookDto _self;
  final $Res Function(ReadingBookDto) _then;

  /// Create a copy of ReadingBookDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? bookTitle = null,
    Object? title = null,
    Object? image = null,
    Object? detail = null,
    Object? date = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      bookTitle: null == bookTitle
          ? _self.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _ReadingBookDto implements ReadingBookDto {
  _ReadingBookDto(
      {required this.id,
      required this.author,
      required this.bookTitle,
      required this.title,
      required this.image,
      required this.detail,
      required this.date});
  factory _ReadingBookDto.fromJson(Map<String, dynamic> json) =>
      _$ReadingBookDtoFromJson(json);

  @override
  final String id;
  @override
  final String author;
  @override
  final String bookTitle;
  @override
  final String title;
  @override
  final String image;
  @override
  final String detail;
  @override
  final String date;

  /// Create a copy of ReadingBookDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ReadingBookDtoCopyWith<_ReadingBookDto> get copyWith =>
      __$ReadingBookDtoCopyWithImpl<_ReadingBookDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ReadingBookDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadingBookDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.bookTitle, bookTitle) ||
                other.bookTitle == bookTitle) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.date, date) || other.date == date));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, author, bookTitle, title, image, detail, date);

  @override
  String toString() {
    return 'ReadingBookDto(id: $id, author: $author, bookTitle: $bookTitle, title: $title, image: $image, detail: $detail, date: $date)';
  }
}

/// @nodoc
abstract mixin class _$ReadingBookDtoCopyWith<$Res>
    implements $ReadingBookDtoCopyWith<$Res> {
  factory _$ReadingBookDtoCopyWith(
          _ReadingBookDto value, $Res Function(_ReadingBookDto) _then) =
      __$ReadingBookDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String id,
      String author,
      String bookTitle,
      String title,
      String image,
      String detail,
      String date});
}

/// @nodoc
class __$ReadingBookDtoCopyWithImpl<$Res>
    implements _$ReadingBookDtoCopyWith<$Res> {
  __$ReadingBookDtoCopyWithImpl(this._self, this._then);

  final _ReadingBookDto _self;
  final $Res Function(_ReadingBookDto) _then;

  /// Create a copy of ReadingBookDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? bookTitle = null,
    Object? title = null,
    Object? image = null,
    Object? detail = null,
    Object? date = null,
  }) {
    return _then(_ReadingBookDto(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      bookTitle: null == bookTitle
          ? _self.bookTitle
          : bookTitle // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      detail: null == detail
          ? _self.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
