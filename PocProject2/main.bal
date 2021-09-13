import ballerina/io;
import ballerina/lang.runtime;
import ballerina/task;

// Prints `Hello World`.

public function main() {
    io:println("Hello, World!");
    io:println("Hello Dilhasha!");
}


// Defines a class called `EvenNumberGenerator`.
// Each class has its own `next()` method, which gets 
// invoked when the stream's `next()` function
// gets called.
class EvenNumberGenerator {
    int i = 0;
    public isolated function next() returns record {| int value; |}|error? {
        self.i += 2;
        return { value: self.i };
    }
}

type ResultValue record {|
    int value;
|};

public function evenNum() {
    EvenNumberGenerator evenGen = new();
    // Creates a `stream` passing an `EvenNumberGenerator` object
    // to the `stream` constructor.
    stream<int, error?> evenNumberStream = new(evenGen);

    var evenNumber = evenNumberStream.next();
    
    if (evenNumber is ResultValue) {
        io:println("Retrieved even number: ", evenNumber.value);
    }
}



type Employee record {
    readonly record {
        string first;
        string last;
    } name;
    int salary;
};

public function structureExec() {
    // key field, `name` is of `record` type.
    table<Employee> key(name) t = table [
        {name: {first: "John", last: "Smith"}, salary: 100},
        {name: {first: "Fred", last: "Bloggs"}, salary: 200}
    ];

    Employee? e = t[{first: "Fred", last: "Bloggs"}];
    io:println(e);
}

// Creates a job to be executed by the scheduler.
class Job {

    *task:Job;
    int i = 1;

    // Executes this function when the scheduled trigger fires.
    public function execute() {
        self.i += 1;
        io:println("MyCounter: ", self.i);
    }

    isolated function init(int i) {
        self.i = i;
    }
}

public function taskexec() returns error? {

    // Schedules the task to execute the job every second.
    task:JobId id = check task:scheduleJobRecurByFrequency(new Job(0), 1);

    // Waits for nine seconds.
    runtime:sleep(9);

    // Unschedules the job.
    check task:unscheduleJob(id);
}
