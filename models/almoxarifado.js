/* ---------- MODEL DO ALMOXARIFADO ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const Almoxarifado = connection.define('almoxarifados', 
    {
        idProduto: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        nomeProduto: {
            type: Sequelize.STRING,
            allowNull: false
        },
        descricaoProduto: {
            type: Sequelize.STRING,
            allowNull: false
        },
        corProduto: {
            type: Sequelize.STRING,
            allowNull: false
        },
        qtdEstoque: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        categoriaProd: {
            type: Sequelize.INTEGER,
            allowNull: false,
        },
        codBarraProd: {
            type: Sequelize.STRING,
            allowNull: false
        }
    }
);

Almoxarifado.sync({force:false});
export default Almoxarifado;