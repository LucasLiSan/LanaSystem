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

/* ----------\/ ROTA ADIÇÃO NO DB ALMOXARIFADO \/---------- */
router.post('/almoxarifado/add', async (req,res) => {
    console.log(req.body);
    const {
        nomeProduto,
        descricaoProduto,
        corProduto,
        qtdEstoque,
        categoriaProd,
        codBarraProd,
        armarioaAlmoxarifado,
        prateleiraAlmoxarifado
    } = req.body;
    try {
        // Cria um novo produto no almoxarifado
        const novoProduto = await Almoxarifado.create({
            nomeProduto : nomeProduto,
            descricaoProduto : descricaoProduto,
            corProduto : corProduto,
            qtdEstoque : qtdEstoque,
            categoriaProd : categoriaProd,
            codBarraProd : codBarraProd
        });

        // Cria uma nova localização para o produto
        await Localizacao.create({
            armario: armarioaAlmoxarifado,
            prateleira: prateleiraAlmoxarifado,
            idProdutoGuardado: novoProduto.idProduto,
            qtdPrdoGuardado: qtdEstoque,
            localArmario: 'ALMOXARIFADO'
        });

        res.redirect("/almoxarifado")
    } catch (error) {
        console.error(error);
        res.status(500).send("Erro ao cadastrar produto.");
    }
});
/* ----------/\ ROTA ADIÇÃO NO DB ALMOXARIFADO /\---------- */

/* ----------\/ ROTA UPDATE DB ALMOXARIFADO \/---------- */



/* ----------/\ ROTA UPDATE DB ALMOXARIFADO /\---------- */

export default router;