const test = "/test";

enum Api {
  // Test
  RUN_TEST("$test/run-test");

  const Api(this.url);
  final String url;
}
