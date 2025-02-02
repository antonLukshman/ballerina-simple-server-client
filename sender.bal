import ballerina/http;
import ballerina/io;

// Define an HTTP client to connect to the receiver server
http:Client receiverClient = check new("http://localhost:9090");

// Send a message to the receiver server
public function main() returns error? {
    string message = "Hello from Sender Server!";

    // Create an HTTP request with the message as the body
    http:Request req = new;
    req.setPayload(message);

    // Send a POST request to the receiver service
    http:Response response = check receiverClient->post("/receive/message", req);
    
    // Print the response from the receiver
    io:println("Response from Receiver: ", response.getTextPayload());
}
