class C     { proc dup(){ return 1; } }
class D : C { proc dup(){ return 2; } proc dup(a:int){ return 3; } }

var c:C = new borrowed D();
writeln(c.dup());
