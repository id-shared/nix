const net = require('net');

const IP = '52.118.190.176';
const PORT = 1001;

// Connect to the server
const client = net.connect(PORT, IP, () => {
    console.log('Connected to server');
});

// Handle incoming data from server (stdout and stderr)
client.on('data', (data) => {
    console.log('Received:', data.toString());
});

// Handle errors
client.on('error', (err) => {
    console.error('Error:', err);
});

// Handle end event (server closed the connection)
client.on('end', () => {
    console.log('Server closed the connection');
});

// Write to stdin
process.stdin.on('data', (data) => {
    client.write(data);
});
