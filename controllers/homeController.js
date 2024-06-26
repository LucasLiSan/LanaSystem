/* ---------- CONTROLLER DE MANUTENÇÃO DA HOME (INDEX.EJS) ---------- */

/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
//import connection from "./config/sequelize-config.js";
import session from "express-session";
import flash from "express-flash";
import multer from "multer";
import path from "path";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
const router = express.Router();

/* ----------\/ ROTA PRINCIPAL \/---------- */
router.get('/home', function(req, res) { res.render("index"); });
/* ----------/\ ROTA PRINCIPAL /\---------- */

export default router;