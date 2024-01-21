import express, { Router } from "express"
import { getConnection } from "../db.js"
import mysql, { Connection } from "mysql"

const router:Router = express.Router();

router.get("/", function (req, res) {
    res.status(200).send({"message" : "OK"});
});

router.get("/test",async function (req, res) {
    let connection: mysql.Connection = getConnection();
    console.log(connection);
    await connection.query("SELECT * FROM test;", (err, result)=>{
        res.status(200).send({"data": result});
    });
});

export {router};