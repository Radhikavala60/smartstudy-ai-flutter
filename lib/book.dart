class Book {
  final String title;
  final int? firstPublishYear;

  Book({required this.title, this.firstPublishYear});

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      title: json['title'],
      firstPublishYear: json['first_publish_year'],
    );
  }
}
