// ignore_for_file: avoid_equals_and_hash_code_on_mutable_classes, avoid_positional_boolean_parameters

/// Used for the single access to [getData]
/// Design for usage single action fields in the state
abstract class SingleAccessValue<T> {
  const SingleAccessValue();

  bool get accessed;
  bool get hasValue;
  T? getData() => null;
}

class SingleAccessVoid<T> implements SingleAccessValue<T> {
  const SingleAccessVoid();

  @override
  bool get accessed => true;

  @override
  bool get hasValue => false;

  @override
  T? getData() => null;
}

class SingleAccessData<T> implements SingleAccessValue<T> {
  SingleAccessData(T data) : _data = data;

  final T _data;
  bool _accessed = false;

  @override
  bool get hasValue => true;

  @override
  bool get accessed => _accessed;

  @override
  T? getData() {
    if (!_accessed) {
      _accessed = true;
      return _data;
    }

    return null;
  }

  @override
  bool operator ==(covariant SingleAccessData<T> other) {
    return other._data == _data && other._accessed == _accessed;
  }

  @override
  int get hashCode => Object.hash(runtimeType, _data, _accessed);

  @override
  String toString() {
    return 'SingleAccessData(data: $_data, accessed: $_accessed)';
  }
}

class SingleAccessBoolean extends SingleAccessData<bool> {
  SingleAccessBoolean(super.data);
}
