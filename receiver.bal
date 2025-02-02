import ballerina/http;
import ballerina/io;

// Define an HTTP listener on port 9090
listener http:Listener receiver = new(9090);

// Define a service that listens for incoming messages
service /receive on receiver {
    
    // This resource is triggered when a POST request is received
    resource function post message(http:Caller caller, http:Request req) returns error? {
        // Read the message from the request body
        string receivedMessage = check req.getTextPayload();
        
        // Print the received message to the console
        io:println("Received Message: ", receivedMessage);
        
        // Send a response back to the sender
        check caller->respond("Message received successfully!");
    }
}
