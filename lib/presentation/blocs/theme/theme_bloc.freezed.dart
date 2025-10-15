// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ThemeEvent {

 ThemeMode get themeMode;
/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeEventCopyWith<ThemeEvent> get copyWith => _$ThemeEventCopyWithImpl<ThemeEvent>(this as ThemeEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeEvent&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'ThemeEvent(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $ThemeEventCopyWith<$Res>  {
  factory $ThemeEventCopyWith(ThemeEvent value, $Res Function(ThemeEvent) _then) = _$ThemeEventCopyWithImpl;
@useResult
$Res call({
 ThemeMode themeMode
});




}
/// @nodoc
class _$ThemeEventCopyWithImpl<$Res>
    implements $ThemeEventCopyWith<$Res> {
  _$ThemeEventCopyWithImpl(this._self, this._then);

  final ThemeEvent _self;
  final $Res Function(ThemeEvent) _then;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? themeMode = null,}) {
  return _then(_self.copyWith(
themeMode: null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}

}


/// Adds pattern-matching-related methods to [ThemeEvent].
extension ThemeEventPatterns on ThemeEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( ThemeModeChanged value)?  themeModeChanged,required TResult orElse(),}){
final _that = this;
switch (_that) {
case ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( ThemeModeChanged value)  themeModeChanged,}){
final _that = this;
switch (_that) {
case ThemeModeChanged():
return themeModeChanged(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( ThemeModeChanged value)?  themeModeChanged,}){
final _that = this;
switch (_that) {
case ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( ThemeMode themeMode)?  themeModeChanged,required TResult orElse(),}) {final _that = this;
switch (_that) {
case ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that.themeMode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( ThemeMode themeMode)  themeModeChanged,}) {final _that = this;
switch (_that) {
case ThemeModeChanged():
return themeModeChanged(_that.themeMode);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( ThemeMode themeMode)?  themeModeChanged,}) {final _that = this;
switch (_that) {
case ThemeModeChanged() when themeModeChanged != null:
return themeModeChanged(_that.themeMode);case _:
  return null;

}
}

}

/// @nodoc


class ThemeModeChanged implements ThemeEvent {
  const ThemeModeChanged(this.themeMode);
  

@override final  ThemeMode themeMode;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ThemeModeChangedCopyWith<ThemeModeChanged> get copyWith => _$ThemeModeChangedCopyWithImpl<ThemeModeChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ThemeModeChanged&&(identical(other.themeMode, themeMode) || other.themeMode == themeMode));
}


@override
int get hashCode => Object.hash(runtimeType,themeMode);

@override
String toString() {
  return 'ThemeEvent.themeModeChanged(themeMode: $themeMode)';
}


}

/// @nodoc
abstract mixin class $ThemeModeChangedCopyWith<$Res> implements $ThemeEventCopyWith<$Res> {
  factory $ThemeModeChangedCopyWith(ThemeModeChanged value, $Res Function(ThemeModeChanged) _then) = _$ThemeModeChangedCopyWithImpl;
@override @useResult
$Res call({
 ThemeMode themeMode
});




}
/// @nodoc
class _$ThemeModeChangedCopyWithImpl<$Res>
    implements $ThemeModeChangedCopyWith<$Res> {
  _$ThemeModeChangedCopyWithImpl(this._self, this._then);

  final ThemeModeChanged _self;
  final $Res Function(ThemeModeChanged) _then;

/// Create a copy of ThemeEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? themeMode = null,}) {
  return _then(ThemeModeChanged(
null == themeMode ? _self.themeMode : themeMode // ignore: cast_nullable_to_non_nullable
as ThemeMode,
  ));
}


}

// dart format on
