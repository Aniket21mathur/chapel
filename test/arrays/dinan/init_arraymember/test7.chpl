proc f() {
  var x: [1..10] real = 5.0;
  return x;
}

class C {
  var x: f().type = f();
}

var c = new unmanaged C();

writeln(c.x);

delete c;
