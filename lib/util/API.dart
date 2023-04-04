import 'dart:convert';
import 'dart:developer';
import 'package:http/http.dart' as http;
import 'package:openai/model/GptModel.dart';

Future<GptModel?> gptAPI(Map<String,dynamic> data) async {
  try {

    final response = await http.post(
      Uri.parse('https://api.openai.com/v1/chat/completions'),
      headers: <String, String>{
        'Content-Type': 'application/json',
        "Authorization":
        "Bearer <API Key>"
      },
      body: jsonEncode(data),
    );
    if (response.statusCode == 200) {
     return GptModel.fromJson(jsonDecode(utf8.decode(response.bodyBytes)));
    }
  } catch (e, stack) {
    print('e $e stack $stack');
    return null;
  }
}
