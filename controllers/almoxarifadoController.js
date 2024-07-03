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
import { where } from "sequelize";
/* ----------/\ IMPORTAÇÃO DE TABLES /\---------- */
const router = express.Router();

/* ----------\/ ROTA PRINCIPAL VIEW ALMOXARIFADO (LISTAS GERAIS E POR ARMARIOS) \/---------- */
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
/* ----------/\ ROTA PRINCIPAL VIEW ALMOXARIFADO (LISTAS GERAIS E POR ARMARIOS) /\---------- */

/* ----------\/ ROTA ADIÇÃO NO DB ALMOXARIFADO (ALMOXARIFADO->CADASTRO) \/---------- */
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
/* ----------/\ ROTA ADIÇÃO NO DB ALMOXARIFADO (ALMOXARIFADO->CADASTRO) /\---------- */

/* ----------\/ ROTA UPDATE E CRIAÇÃO DB ALMOXARIFADO (ALMOXARIFADO->ORGANIZAÇÃO INTERNA) \/---------- */
router.post('/almoxarifado/edit', async (req,res) => {
    const {
        idProdutoDesorg,
        codBarraProdNew,
        nomeItemNew,
        descrProdNew,
        corItemNew,
        qtdItemNew,
        armarioDest,
        prateleiraDest
    } = req.body;

    // Cria novos produtos
    if (Array.isArray(codBarraProdNew)) {
        for (let i = 0; i < codBarraProdNew.length; i++) {
            try {
                // Cria novo item no almoxarifado
                const novoProduto = await Almoxarifado.create({
                    nomeProduto: nomeItemNew[i],
                    descricaoProduto : descrProdNew[i],
                    corProduto: corItemNew[i],
                    qtdEstoque: qtdItemNew[i],
                    categoriaProd: '1', // Ajuste conforme necessário
                    codBarraProd: codBarraProdNew[i]
                });

                // Insere localização
                await Localizacao.create({
                    armario: armarioDest[i],
                    prateleira: prateleiraDest[i],
                    idProdutoGuardado: novoProduto.idProduto,
                    qtdPrdoGuardado: qtdItemNew[i],
                    localArmario: 'ALMOXARIFADO'
                });
            } catch (error) { console.error('Erro ao cadastrar novo produto:', error); }
        }
    } else if (codBarraProdNew) {
        try {
            const novoProduto = await Almoxarifado.create({
                nomeProduto: nomeItemNew,
                descricaoProduto : descrProdNew,
                corProduto: corItemNew,
                qtdEstoque: qtdItemNew,
                categoriaProd: '1', // Ajuste conforme necessário
                codBarraProd: codBarraProdNew
            });

            await Localizacao.create({
                armario: armarioDest,
                prateleira: prateleiraDest,
                idProdutoGuardado: novoProduto.idProduto,
                qtdPrdoGuardado: qtdItemNew,
                localArmario: 'ALMOXARIFADO'
            });
        } catch (error) {
            console.error('Erro ao cadastrar novo produto:', error);
        }
    }

    // Exclui produtos antigos
    if (Array.isArray(idProdutoDesorg)) {
        for (const id of idProdutoDesorg) {
            try {
                await Localizacao.destroy({ where: { idProdutoGuardado: id } });
                await Almoxarifado.destroy({ where: { idProduto: id } });
            } catch (error) { console.error(`Erro ao excluir produto com ID ${id}:`, error); }
        }
    } else if (idProdutoDesorg) {
        try {
            await Localizacao.destroy({ where: { idProdutoGuardado: idProdutoDesorg } });
            await Almoxarifado.destroy({ where: { idProduto: idProdutoDesorg } });
        } catch (error) { console.error(`Erro ao excluir produto com ID ${idProdutoDesorg}:`, error); }
    }

    res.redirect("/almoxarifado");
});

/* ----------/\ ROTA UPDATE E CRIAÇÃO DB ALMOXARIFADO (ALMOXARIFADO->ORGANIZAÇÃO INTERNA) /\---------- */

export default router;