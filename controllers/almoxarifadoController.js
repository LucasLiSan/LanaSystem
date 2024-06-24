/* ---------- CONTROLLER DE MANUTENÇÃO DA VIEW ALMOXARIFADO ---------- */

/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
//import connection from "./config/sequelize-config.js";
import session from "express-session";
import flash from "express-flash";
import multer from "multer";
import path from "path";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
const router = express.Router();

/* ----------\/ ROTA PRINCIPAL VIEW ALMOXARIFADO \/---------- */
router.get('/almoxarifado', function(req, res) { res.render("almoxarifado"); });
/* ----------/\ ROTA PRINCIPAL VIEW ALMOXARIFADO /\---------- */

export default router;