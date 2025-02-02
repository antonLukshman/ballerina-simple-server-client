# Ballerina Simple Server-Client

A simple HTTP-based server-client communication system using the **Ballerina** programming language. The server listens for incoming messages, and the client sends requests to the server.

## 📌 Features

- Simple HTTP server implementation.
- Client sends a request and receives a response.
- Uses Ballerina's built-in HTTP module.
- Easy to set up and run.

## 🛠 Requirements

- [Ballerina](https://ballerina.io/downloads/) (Latest version)
- Git (optional, for version control)
- A code editor (e.g., VS Code with the Ballerina extension)

## 🚀 Setup and Usage

### 1️⃣ Clone the Repository

```sh
git clone https://github.com/yourusername/ballerina-simple-server-client.git
cd ballerina-simple-server-client
```

### 2️⃣ Run the Server

```sh
bal run receiver.bal
```

The server will start listening on `http://localhost:9090/receive/message`.

### 3️⃣ Run the Client

Open a new terminal and execute:

```sh
bal run sender.bal
```

The client will send a message to the server and receive a response.

### 4️⃣ Expected Output

**Server Output:**

```
Received Message: Hello from Sender Server!
```

**Client Output:**

```
Response from Receiver: Message received successfully!
```

## 📂 Project Structure

```
ballerina-simple-server-client/
│── receiver.bal  # Server implementation
│── sender.bal    # Client implementation
│── README.md     # Documentation
│── .gitignore    # Ignored files
```

## 📝 License

This project is licensed under the MIT License.

## 🤝 Contributing

Feel free to submit issues or pull requests to improve the project!

---

Happy coding with Ballerina! 🚀
