import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SummaryController extends GetxController {
  var isLoading = false.obs;
  var summary = "".obs;
  var selectedType = "movie".obs;

  Future<void> fetchSummary(String title) async {
    if (title.isEmpty) return;

    isLoading.value = true;
    summary.value = "";

    String url = selectedType.value == "movie"
        ? "https://agents-like-us-1.onrender.com/api/movie/"
        : "https://agents-like-us-1.onrender.com/api/summarize/";

    Map<String, String> body = selectedType.value == "movie"
        ? {"movie_title": title}
        : {"book_title": title};

    try {
      var response = await http.post(
        Uri.parse(url),
        headers: {"Content-Type": "application/json"},
        body: jsonEncode(body),
      );

      if (response.statusCode == 200) {
        var data = jsonDecode(response.body);
        summary.value = data["synopsis"] ?? "No summary found.";
      } else {
        summary.value = "Error fetching summary. Try again.";
      }
    } catch (e) {
      summary.value = "An error occurred. Please check your internet connection.";
    } finally {
      isLoading.value = false;
    }
  }
}
