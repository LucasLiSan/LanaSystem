/* ---------- CONTROLLER DE MANUTENÇÃO DA VIEW ALMOXARIFADO ---------- */

/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
import session from "express-session";
import flash from "express-flash";
import multer from "multer";
import path from "path";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
/* ----------\/ IMPORTAÇÃO DE TABLES \/---------- */
import Almoxarifado from "../models/almoxarifado.js";
import Localizacao from "../models/localizacao.js";
import Categorias from "../models/categoria.js";
import "../models/associacoes.js";
/* ----------/\ IMPORTAÇÃO DE TABLES /\---------- */
const router = express.Router();

/* ----------\/ ROTA PRINCIPAL VIEW ALMOXARIFADO \/---------- */
router.get('/almoxarifado', async function(req, res) {
    const produtos = await Almoxarifado.findAll({
        include: [
            {
                model: Categorias,
                as: 'categoria'
            },
            {
                model: Localizacao,
                as: 'localizacao'
            }
        ]
    });
    const produtosOrganizados = {};
    produtos.forEach(produto => {
        const armario = produto.localizacao.armario;
        const prateleira = produto.localizacao.prateleira;

        if (!produtosOrganizados[armario]) { produtosOrganizados[armario] = {}; }

        if (!produtosOrganizados[armario][prateleira]) { produtosOrganizados[armario][prateleira] = []; }

        produtosOrganizados[armario][prateleira].push(produto);
    });

    res.render("almoxarifado", {
        produtos: produtos,
        produtosOrganizados: produtosOrganizados
    });
});
/* ----------/\ ROTA PRINCIPAL VIEW ALMOXARIFADO /\---------- */

export default router;