extension ListX<T> on List<T> {
  /// Replaces elements in the original list with elements from [newItems] where
  /// they satisfy the [equals] function. By default, uses the `==` operator.
  List<T> replaceWith(
    List<T> newItems, {
    bool Function(T item, T newItem)? equals,
  }) {
    // If no custom equality function is provided, use the default `==`.
    equals ??= (item, newItem) => item == newItem;

    // Create a new list to store the result to avoid modifying the original list.
    final resultList = List<T>.from(this);

    // Iterate over each element in the newItems list.
    for (final newItem in newItems) {
      for (var i = 0; i < resultList.length; i++) {
        // Replace the element if the equality function returns true.
        if (equals(resultList[i], newItem)) {
          resultList[i] = newItem;
        }
      }
    }

    return resultList;
  }
}
