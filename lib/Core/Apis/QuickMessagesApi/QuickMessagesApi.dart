import 'package:http/http.dart' as http;
class QuickMessagesApi {
    final _client =  http.Client();
    
    Future<http.Response> getQuickMessages() {
        return _client.get("https://api.github.com/orgs/raywenderlich/members");
    }
}