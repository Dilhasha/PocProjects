import ballerina/url;
import ballerina/io;
import ballerina/uuid;

public function urlenc() returns error? {
    string value1 = "data=value";
    // Encoding a URL component into a string.
    string encoded = check url:encode(value1, "UTF-8");
    io:println("URL encoded value: ", encoded);

    string value2 = "data%3Dvalue";
    // Decoding an encoded URL component into a string.
    string decoded = check url:decode(value2, "UTF-8");
    io:println("URL decoded value: ", decoded);
}

public function urlenc1() returns error? {
    string value1 = "data=value";
    // Encoding a URL component into a string.
    string encoded = check url:encode(value1, "UTF-8");
    io:println("URL encoded value: ", encoded);

    string value2 = "data%3Dvalue";
    // Decoding an encoded URL component into a string.
    string decoded = check url:decode(value2, "UTF-8");
    io:println("URL decoded value: ", decoded);
}

public function urlenc2() returns error? {
    string value1 = "data=value";
    // Encoding a URL component into a string.
    string encoded = check url:encode(value1, "UTF-8");
    io:println("URL encoded value: ", encoded);

    string value2 = "data%3Dvalue";
    // Decoding an encoded URL component into a string.
    string decoded = check url:decode(value2, "UTF-8");
    io:println("URL decoded value: ", decoded);
}

public function urlenc3() returns error? {
    string value1 = "data=value";
    // Encoding a URL component into a string.
    string encoded = check url:encode(value1, "UTF-8");
    io:println("URL encoded value: ", encoded);

    string value2 = "data%3Dvalue";
    // Decoding an encoded URL component into a string.
    string decoded = check url:decode(value2, "UTF-8");
    io:println("URL decoded value: ", decoded);
}

public function urlenc4() returns error? {
    string value1 = "data=value";
    // Encoding a URL component into a string.
    string encoded = check url:encode(value1, "UTF-8");
    io:println("URL encoded value: ", encoded);

    string value2 = "data%3Dvalue";
    // Decoding an encoded URL component into a string.
    string decoded = check url:decode(value2, "UTF-8");
    io:println("URL decoded value: ", decoded);
}

public function urlenc5() returns error? {
    string value1 = "data=value";
    // Encoding a URL component into a string.
    string encoded = check url:encode(value1, "UTF-8");
    io:println("URL encoded value: ", encoded);

    string value2 = "data%3Dvalue";
    // Decoding an encoded URL component into a string.
    string decoded = check url:decode(value2, "UTF-8");
    io:println("URL decoded value: ", decoded);
}

public function uuidgenrw() returns error? {
    // Generates a UUID of type 1 as a string.
    string uuid1String = uuid:createType1AsString();
    io:println("UUID of type 1 as a string: ", uuid1String);

    // Generates a UUID of type 1 as a UUID record.
    uuid:Uuid uuid1Record = check uuid:createType1AsRecord();
    io:println("UUID of type 1 as a record: ", uuid1Record);

    // Generates a UUID of type 3 as a string.
    string uuid3String = check uuid:createType3AsString(
    uuid:NAME_SPACE_DNS, "ballerina.io");
    io:println("UUID of type 3 as a string: ", uuid3String);

    // Generates a UUID of type 3 as a record.
    uuid:Uuid uuid3Record = check uuid:createType3AsRecord(
    uuid:NAME_SPACE_DNS, "ballerina.io");
    io:println("UUID of type 3 as a record: ", uuid3Record);

    // Generates a UUID of type 4 as a string.
    string uuid4String = uuid:createType4AsString();
    io:println("UUID of type 4 as a string: ", uuid4String);

    // Generates a UUID of type 4 as a UUID record.
    uuid:Uuid uuid4Record = check uuid:createType4AsRecord();
    io:println("UUID of type 4 as a record: ", uuid4Record);

    // Generates a UUID of type 5 as a string.
    string uuid5String = check uuid:createType5AsString(
                                    uuid:NAME_SPACE_DNS, "ballerina.io");
    io:println("UUID of type 5 as a string: ", uuid5String);

    // Generates a UUID of type 5 as a record.
    uuid:Uuid uuid5Record = check uuid:createType5AsRecord(
                                       uuid:NAME_SPACE_DNS, "ballerina.io");
    io:println("UUID of type 5 as a record: ", uuid5Record);

    // Generates a nil UUID as a string.
    string nilUuidString = uuid:nilAsString();
    io:println("Nil UUID as a string: ", nilUuidString);

    // Generates a nil UUID as a UUID record.
    uuid:Uuid nilUuidRecord = uuid:nilAsRecord();
    io:println("Nil UUID as a record: ", nilUuidRecord);
}
