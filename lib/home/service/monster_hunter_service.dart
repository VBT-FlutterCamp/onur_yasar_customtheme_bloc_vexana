import 'package:monster_hunter/home/model/monster_hunter_model.dart';
import 'package:vexana/vexana.dart';

abstract class IMonsterService {
  final INetworkManager networkManager;

  IMonsterService(this.networkManager);

  Future<List<MonsterHunterModel>?> getAllData();
}

class MonsterService extends IMonsterService {
  MonsterService(INetworkManager networkManager) : super(networkManager);
  final String _baseurl = "https://mhw-db.com/armor";
  @override
  Future<List<MonsterHunterModel>?> getAllData() async {
    final response = await networkManager
        .send<MonsterHunterModel, List<MonsterHunterModel>>(_baseurl,
            parseModel: MonsterHunterModel(), method: RequestType.GET);

    return response.data;
  }
}
