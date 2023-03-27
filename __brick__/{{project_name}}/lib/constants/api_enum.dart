const users = "/users";

enum Api {
  // Users
  USER_INFO(users);

  const Api(this.url);
  final String url;
}
