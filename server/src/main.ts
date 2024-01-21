import express, { Express } from "express";
import { Server } from "http"

import {connectDB} from "./db.js";
import { router as testRouter } from "./routes/test.js";

const app:Express = express();
const port:number = Number(process.env.WEBSERVER_LOCAL);

connectDB();

app.use("/", testRouter);

const server: Server = app.listen(port, ()=>console.log(`app listening on ${port}\ncan access at http://localhost:${process.env.WEBSERVER_DOCKER}`));

export{};