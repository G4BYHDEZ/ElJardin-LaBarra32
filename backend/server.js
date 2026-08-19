require('dotenv').config();
const express = require('express');
const mysql = require('mysql2/promise');
const cors = require('cors');

const app = express();
app.use(express.json());
app.use(cors({
    origin: 'http://jardinbarra32.utportfolio.cloud'
}));

const db = mysql.createPool({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    waitForConnections: true,
    connectionLimit: 10
});


app.get('menu/jardin', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_menu_jardin()'
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_menu_jardin:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.get('menu/barra', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_menu_barra()'
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_menu_barra:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.get('categorias/jardin', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_categorias_jardin()'
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_categorias_jardin:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.get('categorias/barra', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_categorias_barra()'
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_categorias_barra:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.get('categorias/jardin/:id', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_menu_categoria_jardin(?)',
            [req.params.id]
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_menu_categoria_jardin:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.get('categorias/barra/:id', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_menu_categoria_barra(?)',
            [req.params.id]
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_menu_categoria_barra:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.listen(5111, () => console.log('Servidor corriendo en http://localhost:5111'));