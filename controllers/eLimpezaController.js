/* ---------- CONTROLLER DE MANUTENÇÃO DA VIEW ESTOQUE DA LIMPEZA ---------- */

/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
//import connection from "./config/sequelize-config.js";
import session from "express-session";
import flash from "express-flash";
import multer from "multer";
import path from "path";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
const router = express.Router();

/* ----------\/ ROTA PRINCIPAL VIEW ESTOQUE DA LIMPEZA \/---------- */
router.get('/eLimpeza', function(req, res) { res.render("eLimpeza"); });
/* ----------/\ ROTA PRINCIPAL VIEW ESTOQUE DA LIMPEZA /\---------- */

export default router;