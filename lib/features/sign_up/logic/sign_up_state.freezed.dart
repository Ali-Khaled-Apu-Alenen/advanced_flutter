// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_up_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SignUpState<T> {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpState<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>()';
}


}

/// @nodoc
class $SignUpStateCopyWith<T,$Res>  {
$SignUpStateCopyWith(SignUpState<T> _, $Res Function(SignUpState<T>) __);
}


/// Adds pattern-matching-related methods to [SignUpState].
extension SignUpStatePatterns<T> on SignUpState<T> {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial<T> value)?  initial,TResult Function( _SignUpLoading<T> value)?  signUpLoading,TResult Function( _SignUpSuccess<T> value)?  signUpSuccess,TResult Function( _SignUpError<T> value)?  signUpError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SignUpLoading() when signUpLoading != null:
return signUpLoading(_that);case _SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that);case _SignUpError() when signUpError != null:
return signUpError(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial<T> value)  initial,required TResult Function( _SignUpLoading<T> value)  signUpLoading,required TResult Function( _SignUpSuccess<T> value)  signUpSuccess,required TResult Function( _SignUpError<T> value)  signUpError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _SignUpLoading():
return signUpLoading(_that);case _SignUpSuccess():
return signUpSuccess(_that);case _SignUpError():
return signUpError(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial<T> value)?  initial,TResult? Function( _SignUpLoading<T> value)?  signUpLoading,TResult? Function( _SignUpSuccess<T> value)?  signUpSuccess,TResult? Function( _SignUpError<T> value)?  signUpError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _SignUpLoading() when signUpLoading != null:
return signUpLoading(_that);case _SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that);case _SignUpError() when signUpError != null:
return signUpError(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  signUpLoading,TResult Function( T data)?  signUpSuccess,TResult Function( String error)?  signUpError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SignUpLoading() when signUpLoading != null:
return signUpLoading();case _SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that.data);case _SignUpError() when signUpError != null:
return signUpError(_that.error);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  signUpLoading,required TResult Function( T data)  signUpSuccess,required TResult Function( String error)  signUpError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _SignUpLoading():
return signUpLoading();case _SignUpSuccess():
return signUpSuccess(_that.data);case _SignUpError():
return signUpError(_that.error);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  signUpLoading,TResult? Function( T data)?  signUpSuccess,TResult? Function( String error)?  signUpError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _SignUpLoading() when signUpLoading != null:
return signUpLoading();case _SignUpSuccess() when signUpSuccess != null:
return signUpSuccess(_that.data);case _SignUpError() when signUpError != null:
return signUpError(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial<T> implements SignUpState<T> {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.initial()';
}


}




/// @nodoc


class _SignUpLoading<T> implements SignUpState<T> {
  const _SignUpLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpLoading<T>);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SignUpState<$T>.signUpLoading()';
}


}




/// @nodoc


class _SignUpSuccess<T> implements SignUpState<T> {
  const _SignUpSuccess(this.data);
  

 final  T data;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpSuccessCopyWith<T, _SignUpSuccess<T>> get copyWith => __$SignUpSuccessCopyWithImpl<T, _SignUpSuccess<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpSuccess<T>&&const DeepCollectionEquality().equals(other.data, data));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(data));

@override
String toString() {
  return 'SignUpState<$T>.signUpSuccess(data: $data)';
}


}

/// @nodoc
abstract mixin class _$SignUpSuccessCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory _$SignUpSuccessCopyWith(_SignUpSuccess<T> value, $Res Function(_SignUpSuccess<T>) _then) = __$SignUpSuccessCopyWithImpl;
@useResult
$Res call({
 T data
});




}
/// @nodoc
class __$SignUpSuccessCopyWithImpl<T,$Res>
    implements _$SignUpSuccessCopyWith<T, $Res> {
  __$SignUpSuccessCopyWithImpl(this._self, this._then);

  final _SignUpSuccess<T> _self;
  final $Res Function(_SignUpSuccess<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? data = freezed,}) {
  return _then(_SignUpSuccess<T>(
freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T,
  ));
}


}

/// @nodoc


class _SignUpError<T> implements SignUpState<T> {
  const _SignUpError({required this.error});
  

 final  String error;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SignUpErrorCopyWith<T, _SignUpError<T>> get copyWith => __$SignUpErrorCopyWithImpl<T, _SignUpError<T>>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SignUpError<T>&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'SignUpState<$T>.signUpError(error: $error)';
}


}

/// @nodoc
abstract mixin class _$SignUpErrorCopyWith<T,$Res> implements $SignUpStateCopyWith<T, $Res> {
  factory _$SignUpErrorCopyWith(_SignUpError<T> value, $Res Function(_SignUpError<T>) _then) = __$SignUpErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class __$SignUpErrorCopyWithImpl<T,$Res>
    implements _$SignUpErrorCopyWith<T, $Res> {
  __$SignUpErrorCopyWithImpl(this._self, this._then);

  final _SignUpError<T> _self;
  final $Res Function(_SignUpError<T>) _then;

/// Create a copy of SignUpState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(_SignUpError<T>(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
