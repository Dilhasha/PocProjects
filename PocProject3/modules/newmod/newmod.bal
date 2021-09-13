
public int i = 0;

public function hello(string name) returns string {
    if !(name is "") {
        return "Hello, " + name;
    }
    return "Hello, World!";
}

public function increment() {
    i = i + 1;
}