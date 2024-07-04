import 'package:flutter/material.dart';
import 'package:medium_article/core/models/resource.dart';

/// The `BaseView` class is a generic stateful widget that takes a resource and manages its state.
class BaseView<T> extends StatefulWidget {
  /// Constructor for the `BaseView` widget.
  const BaseView({
    required this.resource,
    required this.resourceCall,
    required this.onSuccess,
    super.key,
    this.onErrorBuilder,
    this.onLoadingBuilder,
    this.onInitialBuilder,
  });

  /// The resource object that holds the state of the data.
  final Resource<T> resource;

  /// The function that is called to fetch the resource.
  final Function resourceCall;

  /// The widget builder function that is called when the resource is successfully loaded.
  final Widget Function(T data) onSuccess;

  /// The widget builder function that is called when there is an error loading the resource.
  final Widget Function(Object error)? onErrorBuilder;

  /// The widget builder function that is called while the resource is loading.
  final Widget Function()? onLoadingBuilder;

  /// The widget builder function that is called when the resource is in its initial state.
  final Widget Function()? onInitialBuilder;

  @override
  State<BaseView<T>> createState() => _BaseViewState<T>();
}

/// The `_BaseViewState` class manages the state of the `BaseView` widget.
class _BaseViewState<T> extends State<BaseView<T>> {
  @override
  void initState() {
    super.initState();

    /// Call the resource fetch function when the widget is initialized.
    widget.resourceCall();
  }

  @override
  Widget build(BuildContext context) {
    /// Check the state of the resource and build the appropriate widget.
    if (widget.resource.isInitial) {
      /// Build the initial state widget.
      return widget.onInitialBuilder?.call() ?? _defaultInitialWidget();
    } else if (widget.resource.isLoading) {
      /// Build the loading state widget.
      return widget.onLoadingBuilder?.call() ?? _defaultLoadingWidget();
    } else if (widget.resource.isError) {
      /// Build the error state widget.
      return widget.onErrorBuilder?.call(widget.resource.error!) ??
          _defaultErrorWidget(widget.resource.error,
              onRetry: widget.resourceCall);
    } else if (widget.resource.isSuccess) {
      /// Build the success state widget.
      return widget.onSuccess((widget.resource as ResourceSuccess<T>).data);
    } else {
      /// Build an empty widget if none of the states match.
      return const SizedBox();
    }
  }

  /// Default widget to show when the resource is in its initial state.
  Widget _defaultInitialWidget() {
    return const Center(
      child: Text('Initializing...'),
    );
  }

  /// Default widget to show while the resource is loading.
  Widget _defaultLoadingWidget() {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }

  /// Default widget to show when there is an error loading the resource.
  Widget _defaultErrorWidget(Object? error, {Function? onRetry}) {
    return Center(
      child: InkWell(
        onTap: () {
          widget.resourceCall();
        },
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.error_rounded,
              color: Colors.grey,
            ),
            SizedBox(height: 10),
            Text('Tap to retry'),
          ],
        ),
      ),
    );
  }
}
