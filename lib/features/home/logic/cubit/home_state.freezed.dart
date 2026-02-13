// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( SpicalizationLoading value)?  spicalizationLoading,TResult Function( SpicalizationSuccess value)?  spicalizationSuccess,TResult Function( SpicalizationError value)?  spicalizationError,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpicalizationLoading() when spicalizationLoading != null:
return spicalizationLoading(_that);case SpicalizationSuccess() when spicalizationSuccess != null:
return spicalizationSuccess(_that);case SpicalizationError() when spicalizationError != null:
return spicalizationError(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( SpicalizationLoading value)  spicalizationLoading,required TResult Function( SpicalizationSuccess value)  spicalizationSuccess,required TResult Function( SpicalizationError value)  spicalizationError,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case SpicalizationLoading():
return spicalizationLoading(_that);case SpicalizationSuccess():
return spicalizationSuccess(_that);case SpicalizationError():
return spicalizationError(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( SpicalizationLoading value)?  spicalizationLoading,TResult? Function( SpicalizationSuccess value)?  spicalizationSuccess,TResult? Function( SpicalizationError value)?  spicalizationError,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case SpicalizationLoading() when spicalizationLoading != null:
return spicalizationLoading(_that);case SpicalizationSuccess() when spicalizationSuccess != null:
return spicalizationSuccess(_that);case SpicalizationError() when spicalizationError != null:
return spicalizationError(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  spicalizationLoading,TResult Function( SpicalizationDataResponseModel spicalizationDataResponseModel)?  spicalizationSuccess,TResult Function( ErrorHandler errorHandle)?  spicalizationError,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpicalizationLoading() when spicalizationLoading != null:
return spicalizationLoading();case SpicalizationSuccess() when spicalizationSuccess != null:
return spicalizationSuccess(_that.spicalizationDataResponseModel);case SpicalizationError() when spicalizationError != null:
return spicalizationError(_that.errorHandle);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  spicalizationLoading,required TResult Function( SpicalizationDataResponseModel spicalizationDataResponseModel)  spicalizationSuccess,required TResult Function( ErrorHandler errorHandle)  spicalizationError,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case SpicalizationLoading():
return spicalizationLoading();case SpicalizationSuccess():
return spicalizationSuccess(_that.spicalizationDataResponseModel);case SpicalizationError():
return spicalizationError(_that.errorHandle);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  spicalizationLoading,TResult? Function( SpicalizationDataResponseModel spicalizationDataResponseModel)?  spicalizationSuccess,TResult? Function( ErrorHandler errorHandle)?  spicalizationError,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case SpicalizationLoading() when spicalizationLoading != null:
return spicalizationLoading();case SpicalizationSuccess() when spicalizationSuccess != null:
return spicalizationSuccess(_that.spicalizationDataResponseModel);case SpicalizationError() when spicalizationError != null:
return spicalizationError(_that.errorHandle);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements HomeState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class SpicalizationLoading implements HomeState {
  const SpicalizationLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpicalizationLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.spicalizationLoading()';
}


}




/// @nodoc


class SpicalizationSuccess implements HomeState {
  const SpicalizationSuccess(this.spicalizationDataResponseModel);
  

 final  SpicalizationDataResponseModel spicalizationDataResponseModel;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpicalizationSuccessCopyWith<SpicalizationSuccess> get copyWith => _$SpicalizationSuccessCopyWithImpl<SpicalizationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpicalizationSuccess&&(identical(other.spicalizationDataResponseModel, spicalizationDataResponseModel) || other.spicalizationDataResponseModel == spicalizationDataResponseModel));
}


@override
int get hashCode => Object.hash(runtimeType,spicalizationDataResponseModel);

@override
String toString() {
  return 'HomeState.spicalizationSuccess(spicalizationDataResponseModel: $spicalizationDataResponseModel)';
}


}

/// @nodoc
abstract mixin class $SpicalizationSuccessCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpicalizationSuccessCopyWith(SpicalizationSuccess value, $Res Function(SpicalizationSuccess) _then) = _$SpicalizationSuccessCopyWithImpl;
@useResult
$Res call({
 SpicalizationDataResponseModel spicalizationDataResponseModel
});




}
/// @nodoc
class _$SpicalizationSuccessCopyWithImpl<$Res>
    implements $SpicalizationSuccessCopyWith<$Res> {
  _$SpicalizationSuccessCopyWithImpl(this._self, this._then);

  final SpicalizationSuccess _self;
  final $Res Function(SpicalizationSuccess) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? spicalizationDataResponseModel = null,}) {
  return _then(SpicalizationSuccess(
null == spicalizationDataResponseModel ? _self.spicalizationDataResponseModel : spicalizationDataResponseModel // ignore: cast_nullable_to_non_nullable
as SpicalizationDataResponseModel,
  ));
}


}

/// @nodoc


class SpicalizationError implements HomeState {
  const SpicalizationError(this.errorHandle);
  

 final  ErrorHandler errorHandle;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpicalizationErrorCopyWith<SpicalizationError> get copyWith => _$SpicalizationErrorCopyWithImpl<SpicalizationError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpicalizationError&&(identical(other.errorHandle, errorHandle) || other.errorHandle == errorHandle));
}


@override
int get hashCode => Object.hash(runtimeType,errorHandle);

@override
String toString() {
  return 'HomeState.spicalizationError(errorHandle: $errorHandle)';
}


}

/// @nodoc
abstract mixin class $SpicalizationErrorCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory $SpicalizationErrorCopyWith(SpicalizationError value, $Res Function(SpicalizationError) _then) = _$SpicalizationErrorCopyWithImpl;
@useResult
$Res call({
 ErrorHandler errorHandle
});




}
/// @nodoc
class _$SpicalizationErrorCopyWithImpl<$Res>
    implements $SpicalizationErrorCopyWith<$Res> {
  _$SpicalizationErrorCopyWithImpl(this._self, this._then);

  final SpicalizationError _self;
  final $Res Function(SpicalizationError) _then;

/// Create a copy of HomeState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? errorHandle = null,}) {
  return _then(SpicalizationError(
null == errorHandle ? _self.errorHandle : errorHandle // ignore: cast_nullable_to_non_nullable
as ErrorHandler,
  ));
}


}

// dart format on
