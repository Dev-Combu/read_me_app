// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'naver_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$NaverDto {
  String get title;
  String get link;
  String get image;
  String get author;
  String get discount;
  String get publisher;
  String get pubdate;
  String get isbn;
  String get description;

  /// Create a copy of NaverDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $NaverDtoCopyWith<NaverDto> get copyWith =>
      _$NaverDtoCopyWithImpl<NaverDto>(this as NaverDto, _$identity);

  /// Serializes this NaverDto to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NaverDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.pubdate, pubdate) || other.pubdate == pubdate) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, image, author,
      discount, publisher, pubdate, isbn, description);

  @override
  String toString() {
    return 'NaverDto(title: $title, link: $link, image: $image, author: $author, discount: $discount, publisher: $publisher, pubdate: $pubdate, isbn: $isbn, description: $description)';
  }
}

/// @nodoc
abstract mixin class $NaverDtoCopyWith<$Res> {
  factory $NaverDtoCopyWith(NaverDto value, $Res Function(NaverDto) _then) =
      _$NaverDtoCopyWithImpl;
  @useResult
  $Res call(
      {String title,
      String link,
      String image,
      String author,
      String discount,
      String publisher,
      String pubdate,
      String isbn,
      String description});
}

/// @nodoc
class _$NaverDtoCopyWithImpl<$Res> implements $NaverDtoCopyWith<$Res> {
  _$NaverDtoCopyWithImpl(this._self, this._then);

  final NaverDto _self;
  final $Res Function(NaverDto) _then;

  /// Create a copy of NaverDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? image = null,
    Object? author = null,
    Object? discount = null,
    Object? publisher = null,
    Object? pubdate = null,
    Object? isbn = null,
    Object? description = null,
  }) {
    return _then(_self.copyWith(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      pubdate: null == pubdate
          ? _self.pubdate
          : pubdate // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _self.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _NaverDto implements NaverDto {
  _NaverDto(
      {required this.title,
      required this.link,
      required this.image,
      required this.author,
      required this.discount,
      required this.publisher,
      required this.pubdate,
      required this.isbn,
      required this.description});
  factory _NaverDto.fromJson(Map<String, dynamic> json) =>
      _$NaverDtoFromJson(json);

  @override
  final String title;
  @override
  final String link;
  @override
  final String image;
  @override
  final String author;
  @override
  final String discount;
  @override
  final String publisher;
  @override
  final String pubdate;
  @override
  final String isbn;
  @override
  final String description;

  /// Create a copy of NaverDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$NaverDtoCopyWith<_NaverDto> get copyWith =>
      __$NaverDtoCopyWithImpl<_NaverDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$NaverDtoToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NaverDto &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.link, link) || other.link == link) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.discount, discount) ||
                other.discount == discount) &&
            (identical(other.publisher, publisher) ||
                other.publisher == publisher) &&
            (identical(other.pubdate, pubdate) || other.pubdate == pubdate) &&
            (identical(other.isbn, isbn) || other.isbn == isbn) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, link, image, author,
      discount, publisher, pubdate, isbn, description);

  @override
  String toString() {
    return 'NaverDto(title: $title, link: $link, image: $image, author: $author, discount: $discount, publisher: $publisher, pubdate: $pubdate, isbn: $isbn, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$NaverDtoCopyWith<$Res>
    implements $NaverDtoCopyWith<$Res> {
  factory _$NaverDtoCopyWith(_NaverDto value, $Res Function(_NaverDto) _then) =
      __$NaverDtoCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String title,
      String link,
      String image,
      String author,
      String discount,
      String publisher,
      String pubdate,
      String isbn,
      String description});
}

/// @nodoc
class __$NaverDtoCopyWithImpl<$Res> implements _$NaverDtoCopyWith<$Res> {
  __$NaverDtoCopyWithImpl(this._self, this._then);

  final _NaverDto _self;
  final $Res Function(_NaverDto) _then;

  /// Create a copy of NaverDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? title = null,
    Object? link = null,
    Object? image = null,
    Object? author = null,
    Object? discount = null,
    Object? publisher = null,
    Object? pubdate = null,
    Object? isbn = null,
    Object? description = null,
  }) {
    return _then(_NaverDto(
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      link: null == link
          ? _self.link
          : link // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _self.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      discount: null == discount
          ? _self.discount
          : discount // ignore: cast_nullable_to_non_nullable
              as String,
      publisher: null == publisher
          ? _self.publisher
          : publisher // ignore: cast_nullable_to_non_nullable
              as String,
      pubdate: null == pubdate
          ? _self.pubdate
          : pubdate // ignore: cast_nullable_to_non_nullable
              as String,
      isbn: null == isbn
          ? _self.isbn
          : isbn // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
