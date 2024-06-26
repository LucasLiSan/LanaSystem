/* ---------- CONTROLLER DE MANUTENÇÃO DOS USUÁRIOS ---------- */

/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
import connection from "../configuration/sequelizeConfig.js"
import session from "express-session";
import flash from "express-flash";
import multer from "multer";
import path from "path";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
/* ----------\/ IMPORTAÇÃO DE MODELS \/---------- */
import Users from "../models/users.js";
/* ----------/\ IMPORTAÇÃO DE MODELS /\---------- */

const router = express.Router();



export default router;