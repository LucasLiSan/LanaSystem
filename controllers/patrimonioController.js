/* ---------- CONTROLLER DE MANUTENÇÃO DA VIEW PATRIMONIO ---------- */

/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
//import connection from "./config/sequelize-config.js";
import session from "express-session";
import flash from "express-flash";
import multer from "multer";
import path from "path";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
const router = express.Router();

/* ----------\/ ROTA PRINCIPAL VIEW PATRIMONIO \/---------- */
router.get('/patrimonio', function(req, res) { res.render("patrimonio"); });
/* ----------/\ ROTA PRINCIPAL VIEW PATRIMONIO /\---------- */

export default router;