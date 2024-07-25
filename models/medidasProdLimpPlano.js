/* ---------- MODEL DAS MEDIDAS DOS PRODUTOS DE LIMPEZA (AREA) ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const AreaProdLimp = connection.define('areaProdLimp', 
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
        formaProd: {
            type: Sequelize.STRING,
            allowNull: false,
        },
        dimLargura: {
            type: Sequelize.DECIMAL(8,2),
            allowNull: true
        },
        dimComprimento: {
            type: Sequelize.DECIMAL(8,2),
            allowNull: true
        },
        dimRaio: {
            type: Sequelize.DECIMAL(8,2),
            allowNull: true
        }
    }
);

AreaProdLimp.sync({force:false});
export default AreaProdLimp;
