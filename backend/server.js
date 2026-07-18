require('dotenv').config();
const express = require('express');
const mysql = require('mysql2/promise');
const cors = require('cors');

const app = express();
app.use(express.json());
app.use(cors());

const db = mysql.createPool({
    host: process.env.DB_HOST,
    port: process.env.DB_PORT,
    user: process.env.DB_USER,
    password: process.env.DB_PASSWORD,
    database: process.env.DB_NAME,
    waitForConnections: true,
    connectionLimit: 10
});


app.get('/api/menu', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_menu()'
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_menu:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.get('/api/categorias', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_categorias()'
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_categorias:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.get('/api/categorias/:id', async (req, res) => {
    try {
        const [rows] = await db.query(
            'CALL sp_obtener_menu_categoria(?)',
            [req.params.id]
        );
        res.json(rows[0]);
    } catch (error) {
        console.error("Error en sp_obtener_menu_categorias:", error);
        res.status(500).json({
            error: 'Error interno del servidor.'
        });
    }
});

app.listen(5111, () => console.log('Servidor corriendo en http://localhost:5111'));