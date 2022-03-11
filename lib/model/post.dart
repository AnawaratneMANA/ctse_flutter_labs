class Post {
  // Attributes.
  final int id;
  final String title;
  final String body;

  // Constructor.
  const Post({required this.id, required this.title, required this.body});

  // Convert the JSON into Map.
  factory Post.fromJSON(Map<String, dynamic> data){
    return Post(
      id: data["id"],
      title: data["title"],
      body: data["body"]
    );
  }

}