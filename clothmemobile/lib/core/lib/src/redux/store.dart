//import 'package:http/http.dart';
//import 'package:key_value_store/key_value_store.dart';
//import 'package:redux/redux.dart';
//
//Store<AppState> createStore(Client client, KeyValueStore keyValueStore) {
//  final tmdbApi = TMDBApi(client);
//  final finnkinoApi = FinnkinoApi(client);
//
//  return Store(
//    appReducer,
//    initialState: AppState.initial(),
//    distinct: true,
//    middleware: [
//      ActorMiddleware(tmdbApi),
//      TheaterMiddleware(keyValueStore),
//      ShowMiddleware(finnkinoApi),
//      EventMiddleware(finnkinoApi),
//    ],
//  );
//}