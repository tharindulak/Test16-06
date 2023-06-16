import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Comp1",
	id: "Comp1-9f8ea9af-4d28-4dec-81db-d16d86f5bcb2"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        int _ = 12;
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
