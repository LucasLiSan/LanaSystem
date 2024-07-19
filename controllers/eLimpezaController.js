/* ---------- CONTROLLER DE MANUTENÇÃO DA VIEW ESTOQUE DA LIMPEZA (eLimpeza)---------- */

/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
import session from "express-session";
import flash from "express-flash";
import multer from "multer";
import path from "path";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
/* ----------\/ IMPORTAÇÃO DE TABLES \/---------- */
import EstoqueLimpeza from "../models/eLimpeza.js"
import LocalizacaoLimpeza from "../models/localizacaoLimpeza.js";
import CategoriasProdLimp from "../models/categoriaProdLimp.js";
import "../models/associacoes.js";
import { where } from "sequelize";
/* ----------/\ IMPORTAÇÃO DE TABLES /\---------- */
const router = express.Router();

function formatDate(dateString) {
    if (dateString === '0000-00-00 00:00:00') { return 'INDETERMINADA'; }

    const months = [
        "Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho",
        "Julho", "Agosto", "Setembro", "Outubro", "Novembro", "Dezembro"
    ];

    const date = new Date(dateString);

    if (isNaN(date.getTime())) { return 'INDETERMINADO'; }

    const day = date.getDate();
    const month = months[date.getMonth()];
    const year = date.getFullYear();
    
    return `${day} ${month} ${year}`;
}

/* ----------\/ ROTA PRINCIPAL VIEW ESTOQUE DA LIMPEZA (LISTAS GERAIS E POR ARMARIOS) \/---------- */
router.get('/eLimpeza', async function(req, res) {
    try {
        const prodsLimpeza = await EstoqueLimpeza.findAll({
            include: [
                {
                    model: CategoriasProdLimp,
                    as: 'categoriaProdLimp'
                },
                {
                    model: LocalizacaoLimpeza,
                    as: 'localizacaoProdLimp'
                }
            ]
        });

        const prodsLimpezaOrganizados = {};
        prodsLimpeza.forEach(prodLimpeza => {
            const armarioLimpeza = prodLimpeza.localizacaoProdLimp?.armario;
            const prateleiraLimpeza = prodLimpeza.localizacaoProdLimp?.prateleira;

            if (armarioLimpeza && prateleiraLimpeza) {
                if (!prodsLimpezaOrganizados[armarioLimpeza]) { prodsLimpezaOrganizados[armarioLimpeza] = {}; }
                if (!prodsLimpezaOrganizados[armarioLimpeza][prateleiraLimpeza]) { prodsLimpezaOrganizados[armarioLimpeza][prateleiraLimpeza] = []; }
                prodsLimpezaOrganizados[armarioLimpeza][prateleiraLimpeza].push(prodLimpeza);
            }
        });

        res.render("eLimpeza", {
            prodsLimpeza: prodsLimpeza,
            prodsLimpezaOrganizados: prodsLimpezaOrganizados,
            dataDeValidade: formatDate
        });
    } catch (error) {
        console.error(error);
        res.status(500).send('Internal Server Error');
    }
});
/* ----------/\ ROTA PRINCIPAL VIEW ESTOQUE DA LIMPEZA (LISTAS GERAIS E POR ARMARIOS) /\---------- */

/* ----------\/ ROTA ADIÇÃO NO DB ESTOQUE DA LIMPEZA (ESTOQUE DA LIMPEZA->CADASTRO) \/---------- */
router.post('/eLimpeza/add', async (req,res) => {
    console.log(req.body);
    const dadosFormulario = req.body;

    try {
        const produtos = Object.keys(dadosFormulario.codBarraProd).map(index => ({
            codBarraProd: dadosFormulario.codBarraProd[index],
            nomeProduto: dadosFormulario.nomeProduto[index],
            descricaoProduto: dadosFormulario.descricaoProduto[index],
            corProduto: dadosFormulario.corProduto[index],
            qtdEstoque: dadosFormulario.qtdEstoque[index],
            categoriaProd: dadosFormulario.categoriaProd[index],
            armarioaAlmoxarifado: dadosFormulario.armarioaAlmoxarifado[index],
            prateleiraAlmoxarifado: dadosFormulario.prateleiraAlmoxarifado[index]
        }));

        const novosProdutos = await Promise.all(produtos.map(async (produto) => {
            // Cria um novo produto no almoxarifado
            const novoProduto = await EstoqueLimpeza.create({
                nomeProduto: produto.nomeProduto,
                descricaoProduto: produto.descricaoProduto,
                corProduto: produto.corProduto,
                qtdEstoque: produto.qtdEstoque,
                categoriaProd: produto.categoriaProd,
                codBarraProd: produto.codBarraProd
            });

            // Cria uma nova localização para o produto
            await Localizacao.create({
                armario: produto.armarioaAlmoxarifado,
                prateleira: produto.prateleiraAlmoxarifado,
                idProdutoGuardado: novoProduto.idProduto,
                qtdPrdoGuardado: produto.qtdEstoque,
                localArmario: 'ESTOQUE LIMPEZA'
            });

            return novoProduto;
        }));

        console.log("Produtos cadastrados:", novosProdutos);
        res.redirect("/eLimpeza");
    } catch (error) {
        console.error(error);
        res.status(500).send("Erro ao cadastrar produto.");
    }
});
/* ----------/\ ROTA ADIÇÃO NO DB ESTOQUE DA LIMPEZA (ESTOQUE DA LIMPEZA->CADASTRO) /\---------- */

/* ----------\/ ROTA UPDATE E CRIAÇÃO DB ESTOQUE DA LIMPEZA (ESTOQUE DA LIMPEZA->ORGANIZAÇÃO INTERNA) \/---------- */
router.post('/eLimpeza/edit', async (req,res) => {
    const {
        idProdutoDesorg,
        codBarraProdNew,
        nomeItemNew,
        descrProdNew,
        corItemNew,
        qtdItemNew,
        catProdNew,
        armarioDest,
        prateleiraDest
    } = req.body;

    // Cria novos produtos
    if (Array.isArray(codBarraProdNew)) {
        for (let i = 0; i < codBarraProdNew.length; i++) {
            try {
                // Cria novo item no almoxarifado
                const novoProduto = await EstoqueLimpeza.create({
                    nomeProduto: nomeItemNew[i],
                    descricaoProduto : descrProdNew[i],
                    corProduto: corItemNew[i],
                    qtdEstoque: qtdItemNew[i],
                    categoriaProd: catProdNew[i],
                    codBarraProd: codBarraProdNew[i]
                });

                // Insere localização
                await Localizacao.create({
                    armario: armarioDest[i],
                    prateleira: prateleiraDest[i],
                    idProdutoGuardado: novoProduto.idProduto,
                    qtdPrdoGuardado: qtdItemNew[i],
                    localArmario: 'ESTOQUE LIMPEZA'
                });
            } catch (error) { console.error('Erro ao cadastrar novo produto:', error); }
        }
    } else if (codBarraProdNew) {
        try {
            const novoProduto = await EstoqueLimpeza.create({
                nomeProduto: nomeItemNew,
                descricaoProduto : descrProdNew,
                corProduto: corItemNew,
                qtdEstoque: qtdItemNew,
                categoriaProd: catProdNew,
                codBarraProd: codBarraProdNew
            });

            await Localizacao.create({
                armario: armarioDest,
                prateleira: prateleiraDest,
                idProdutoGuardado: novoProduto.idProduto,
                qtdPrdoGuardado: qtdItemNew,
                localArmario: 'ESTOQUE LIMPEZA'
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
                await EstoqueLimpeza.destroy({ where: { idProduto: id } });
            } catch (error) { console.error(`Erro ao excluir produto com ID ${id}:`, error); }
        }
    } else if (idProdutoDesorg) {
        try {
            await Localizacao.destroy({ where: { idProdutoGuardado: idProdutoDesorg } });
            await EstoqueLimpeza.destroy({ where: { idProduto: idProdutoDesorg } });
        } catch (error) { console.error(`Erro ao excluir produto com ID ${idProdutoDesorg}:`, error); }
    }

    res.redirect("/eLimpeza");
});

/* ----------/\ ROTA UPDATE E CRIAÇÃO DB ESTOQUE DA LIMPEZA (ESTOQUE DA LIMPEZA->ORGANIZAÇÃO INTERNA) /\---------- */

export default router;