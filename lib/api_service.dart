import 'dart:convert';
import 'package:http/http.dart' as http;
import '../model/book.dart';

class ApiService {
  Future<List<Book>> fetchBooks() async {
    final response = await http.get(
      Uri.parse(
        'https://openlibrary.org/subjects/computer_science.json?limit=10',
      ),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List books = data['works'];

      return books.map((e) => Book.fromJson(e)).toList();
    } else {
      throw Exception('Failed to load books');
    }
  }
}
