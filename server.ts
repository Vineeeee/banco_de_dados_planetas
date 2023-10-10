import express from "express";
import { PrismaClient } from "@prisma/client";

const app = express();
const prisma = new PrismaClient();

app.use(express.json());


app.get("/", async (req, res) => {

    try {

        const tecnology = await prisma.tecnology.findMany({});
        const crew = await prisma.crew.findMany({});
        const destinations = await prisma.destination.findMany({});

        res.status(200).json({ destinations, crew, tecnology });

    } catch (error) {
        console.error(error);
        res.status(500).send({ message: "error server" });
    }

});

app.get("/destination", async (req, res) => {

    try {

        const destinations = await prisma.destination.findMany({});

        res.status(200).json({ destinations });

    } catch (error) {
        console.error(error);
        res.status(500).send({ message: "error server" });
    }

});

app.get("/crew", async (req, res) => {

    try {

        const crew = await prisma.crew.findMany({});

        res.status(200).json({ crew });

    } catch (error) {
        console.error(error);
        res.status(500).send({ message: "error server" });
    }

});

app.get("/tecnology", async (req, res) => {

    try {

        const tecnology = await prisma.tecnology.findMany({});

        res.status(200).json({ tecnology });

    } catch (error) {
        console.error(error);
        res.status(500).send({ message: "error server" });
    }

});

app.listen(3000, () => {
    console.log("Servidor em execução em http://localhost:3000");
});