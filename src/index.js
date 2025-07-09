"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
const http_1 = __importDefault(require("http"));
const PORT = 3000;
const server = http_1.default.createServer((_req, res) => {
    res.writeHead(200, { 'Content-Type': 'text/plain' });
    res.end('Welcome to Node application on web server\n');
});
server.listen(PORT, () => {
    console.log(`Server is running at http://localhost:${PORT}`);
});
