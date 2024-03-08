import 'package:ints/base/networking/api.dart';
import 'package:ints/repository/post/post_repositories.dart';

///
/// --------------------------------------------
/// In this class where the [Function]s correspond to the API.
/// Which function here you will make it and you will consume it.
/// You can find and use on your Controller wich is the Controller extends [BaseController].
mixin class Repositories {
  late PostRepositories postRepositories;
  
  initBaseRepositories({required ApiService apiService}) {
    postRepositories = PostRepositories(apiService: apiService);
  }

  // Future<Result> getDataMember() async =>
  //     await _service.get(endPoint: "test-get");
}
