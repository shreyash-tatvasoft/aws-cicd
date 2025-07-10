import express from "express";

const app = express();

const PORT = process.env.PORT || 3000;

app.get("/", (req, res) => {
    console.log("API request", req, res);
    res.send("Welcome to Node application on Web server");
})

app.listen(PORT, () => { console.log("Server Running on Port =>",PORT) })
