// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostListState {
  Resource<List<Post>> get posts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostListStateCopyWith<PostListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostListStateCopyWith<$Res> {
  factory $PostListStateCopyWith(
          PostListState value, $Res Function(PostListState) then) =
      _$PostListStateCopyWithImpl<$Res, PostListState>;
  @useResult
  $Res call({Resource<List<Post>> posts});
}

/// @nodoc
class _$PostListStateCopyWithImpl<$Res, $Val extends PostListState>
    implements $PostListStateCopyWith<$Res> {
  _$PostListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_value.copyWith(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Resource<List<Post>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostListStateImplCopyWith<$Res>
    implements $PostListStateCopyWith<$Res> {
  factory _$$PostListStateImplCopyWith(
          _$PostListStateImpl value, $Res Function(_$PostListStateImpl) then) =
      __$$PostListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Resource<List<Post>> posts});
}

/// @nodoc
class __$$PostListStateImplCopyWithImpl<$Res>
    extends _$PostListStateCopyWithImpl<$Res, _$PostListStateImpl>
    implements _$$PostListStateImplCopyWith<$Res> {
  __$$PostListStateImplCopyWithImpl(
      _$PostListStateImpl _value, $Res Function(_$PostListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? posts = null,
  }) {
    return _then(_$PostListStateImpl(
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as Resource<List<Post>>,
    ));
  }
}

/// @nodoc

class _$PostListStateImpl implements _PostListState {
  const _$PostListStateImpl({required this.posts});

  @override
  final Resource<List<Post>> posts;

  @override
  String toString() {
    return 'PostListState(posts: $posts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostListStateImpl &&
            (identical(other.posts, posts) || other.posts == posts));
  }

  @override
  int get hashCode => Object.hash(runtimeType, posts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostListStateImplCopyWith<_$PostListStateImpl> get copyWith =>
      __$$PostListStateImplCopyWithImpl<_$PostListStateImpl>(this, _$identity);
}

abstract class _PostListState implements PostListState {
  const factory _PostListState({required final Resource<List<Post>> posts}) =
      _$PostListStateImpl;

  @override
  Resource<List<Post>> get posts;
  @override
  @JsonKey(ignore: true)
  _$$PostListStateImplCopyWith<_$PostListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
