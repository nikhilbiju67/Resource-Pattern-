import 'package:medium_article/core/models/resource.dart';

Future<void> fetchResource<T>(
  Future<Resource<T>> Function() apiCall,
  Function(Resource<T>) onStateChange,
) async {
  onStateChange(Resource<T>.loading());
  final response = await apiCall();
  onStateChange(response);
}
