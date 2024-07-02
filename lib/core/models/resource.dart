
/// A sealed class representing the state of a resource.
///
/// This class encapsulates different states like initial, success, error, and loading
/// for a resource that can be used for managing UI state based on data fetching operations.
sealed class Resource<T> {
  const Resource._();

  /// Factory constructor for initial state, representing the initial/starting state of a resource.
  factory Resource.initial() => const ResourceInitial();

  /// Factory constructor for success state, representing a successfully loaded resource.
  /// Optionally takes a [UIMessageModel] for displaying success messages.
  factory Resource.success(T data,) =>
      ResourceSuccess(data);

  /// Factory constructor for error state, representing a resource loading failure.
  /// Optionally takes a [UIMessageModel] for displaying error messages.
  factory Resource.error(Object error) =>
      ResourceError(error);

  /// Factory constructor for loading state, representing a resource in the process of being loaded.
  factory Resource.loading() => const ResourceLoading();

  /// Indicates if the current state is loading.
  bool get isLoading => this is ResourceLoading;

  /// Indicates if the current state is initial.
  bool get isInitial => this is ResourceInitial;

  /// Indicates if the current state is success.
  bool get isSuccess => this is ResourceSuccess;

  /// Indicates if the current state is error.
  bool get isError => this is ResourceError;

  /// Retrieves the data if the state is success; otherwise, returns null.
  T? get data => this is ResourceSuccess ? this.data : null;

  /// Retrieves the error if the state is error; otherwise, returns null.
  Object? get error => this is ResourceError ? this.error : null;
}

/// Represents the initial state of a resource.
class ResourceInitial<T> extends Resource<T> {
  const ResourceInitial() : super._();
}

/// Represents the success state of a resource with [data].
/// Optionally contains a [successMessage] for UI display.
class ResourceSuccess<T> extends Resource<T> {
  const ResourceSuccess(this.data) : super._();
  @override
  final T data;
}

/// Represents the error state of a resource with an [error].
/// Optionally contains an [errorMessage] for UI display.
class ResourceError<T> extends Resource<T> {
  const ResourceError(this.error) : super._();
  @override
  final Object error;
}

/// Represents the loading state of a resource.
class ResourceLoading<T> extends Resource<T> {
  const ResourceLoading() : super._();
}
