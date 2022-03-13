import 'package:vexana/vexana.dart';

class NetworkService {
  static NetworkService? _instace;
  static NetworkService get instance {
    _instace ??= NetworkService._init();
    return _instace!;
  }

  late final INetworkManager networkManager;
  final String _baseUrl = 'https://mhw-db.com/armor';

  NetworkService._init() {
    networkManager = NetworkManager(options: BaseOptions(baseUrl: _baseUrl));
  }
}
