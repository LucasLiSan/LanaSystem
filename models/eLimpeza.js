/* ---------- MODEL DO ESTOQUE DA LIMPEZA ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const EstoqueLimpeza = connection.define('estoqueLimpeza', 
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
        },
        marcaProd: {
            type: Sequelize.STRING,
            allowNull: false
        },
        validadeProd: {
            type: Sequelize.STRING,
            allowNull: false
        },
        tipoProd: {
            type: Sequelize.STRING,
            allowNull: false
        },
        situacaoProd: {
            type: Sequelize.STRING,
            allowNull: false
        }
    }
);

EstoqueLimpeza.sync({force:false});
export default EstoqueLimpeza;