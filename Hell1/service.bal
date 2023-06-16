import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Hell1",
	id: "Hell1-c61955a8-c8e9-41c2-979c-8a28128b6773"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
