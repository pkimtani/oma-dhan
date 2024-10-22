import 'package:api_client/src/client/firestore_client.dart';

class APIClient {
  const APIClient();

  static void get init => FirestoreClient(null);
}
