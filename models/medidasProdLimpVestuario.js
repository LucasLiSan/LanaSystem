/* ---------- MODEL DAS MEDIDAS DOS PRODUTOS DE LIMPEZA (VESTUARIO) ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const TamanhoProdLimp = connection.define('tamanhoProdLimp', 
    {
        id: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        idProduto: {
            type: Sequelize.INTEGER,
            allowNull: false,
        },
        tamanho: {
            type: Sequelize.STRING,
            allowNull: false
        }
    }
);

TamanhoProdLimp.sync({force:false});
export default TamanhoProdLimp;
