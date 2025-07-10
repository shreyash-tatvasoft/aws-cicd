import http from 'http';

const PORT = process.env.PORT || 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/html' }); // Use text/html instead of text/plain
  res.end('<h1>Welcome to Node application on Web server</h1>');
});

server.listen(PORT, () => {
  console.log(`Server is running at http://localhost:${PORT}`);
});
