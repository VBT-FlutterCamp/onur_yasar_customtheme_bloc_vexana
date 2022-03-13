import 'package:flutter_test/flutter_test.dart';
import 'package:monster_hunter/home/model/monster_hunter_model.dart';
import 'package:vexana/vexana.dart';

void main() {
  INetworkManager? networkManeger;

  setUp(() {
    const String baseUrl = "https://mhw-db.com/armor";
    networkManeger = NetworkManager(options: BaseOptions(baseUrl: baseUrl));
  });

  test('simple test', () async {
    final response = await networkManeger
        ?.send<MonsterHunterModel, List<MonsterHunterModel>>('',
            parseModel: MonsterHunterModel(), method: RequestType.GET);

    expect(response, isNotNull);
  });
}
