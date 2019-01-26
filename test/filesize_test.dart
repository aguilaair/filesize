import "package:test/test.dart";
import "../lib/filesize.dart";

void main() {
  int divider = 1024;

  test("10", () {
    expect(filesize(10), "10 B");
  });

  test("10 string", () {
    expect(filesize("10"), "10 B");
  });

  test("1025", () {
    expect(filesize(1025, 0), "1 KB");
  });

  test("divider", () {
    expect(filesize(divider), "1 KB");
  });

  test("divider", () {
    expect(filesize(divider), "1 KB");
  });

  test("14365320", () {
    expect(filesize(14365320), "13.70 MB");
  });

  test("664365320", () {
    expect(filesize(664365320), "633.59 MB");
  });

  test("1212312421412412", () {
    expect(filesize(1212312421412412), "1.08 PB");
  });
}
