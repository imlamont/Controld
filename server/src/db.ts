import mysql from "mysql"
import fs from "fs"

let connection: mysql.Connection | null = null;

export async function connectDB(): Promise<mysql.Connection | null> {
    let pathToPass: string = (process.env.DOCKER=="true") ? "/run/secrets/db-root-pass" : "../secrets/db-root-pass-local.txt";
    const password: string = String(fs.readFileSync(pathToPass));
    try {
        connection = await mysql.createConnection({
            user: "root",
            password: password,
            database: "controld"
        });
        connection.connect((err)=>{
            if (err) console.error(`error in mysql connection: ${err}`);
            else console.log("database connected");
        });
        return connection;
    } catch (error) {
        console.error(`error in mysql connection: ${error}`);
        return null;
    }
}

export function getConnection(): mysql.Connection {
    return connection as mysql.Connection;
}