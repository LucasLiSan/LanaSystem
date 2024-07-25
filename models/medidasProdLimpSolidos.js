/* ---------- MODEL DAS MEDIDAS DOS PRODUTOS DE LIMPEZA (PESO) ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const PesoProdLimp = connection.define('pesoProdLimp', 
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
        peso: {
            type: Sequelize.DECIMAL(9,2),
            allowNull: false
        }
    }
);

PesoProdLimp.sync({force:false});
export default PesoProdLimp;
