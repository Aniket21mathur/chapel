class Logger {
  proc  Println(v...?eltType) {
    writeln("BaseLogger: ", (...v));
  }
}

class DefaultLogger: Logger {
  proc  Println(v...?eltType) {
    writeln("DefaultLogger: ", (...v));
  }
}

class DefaultLogger2: Logger {
  proc  Println(v...?eltType) {
    writeln("DefaultLogger2: ", (...v));
  }
}

var Log: Logger;
Log = new borrowed DefaultLogger();
Log.Println("I want to print from my DefaultLogger");
Log = new borrowed DefaultLogger2();
Log.Println("I want to print from my DefaultLogger2");
