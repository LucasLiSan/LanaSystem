/* ---------- CONTROLLER DE MANUTENÇÃO DA VIEW ESTOQUE DA COZINHA ---------- */

/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
//import connection from "./config/sequelize-config.js";
import session from "express-session";
import flash from "express-flash";
import multer from "multer";
import path from "path";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
const router = express.Router();

/* ----------\/ ROTA PRINCIPAL VIEW ESTOQUE DA COZINHA \/---------- */
router.get('/eCozinha', function(req, res) { res.render("eCozinha"); });
/* ----------/\ ROTA PRINCIPAL VIEW ESTOQUE DA COZINHA /\---------- */

export default router;