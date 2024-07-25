/* ---------- MODEL DAS MEDIDAS DOS PRODUTOS DE LIMPEZA (LIQUIDOS) ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const LitroProdLimp = connection.define('litroProdLimp', 
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
        litros: {
            type: Sequelize.DECIMAL(8,2),
            allowNull: false
        }
    }
);

LitroProdLimp.sync({force:false});
export default LitroProdLimp;
