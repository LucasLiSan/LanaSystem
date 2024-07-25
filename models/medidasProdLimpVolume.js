/* ---------- MODEL DAS MEDIDAS DOS PRODUTOS DE LIMPEZA (VOLUME) ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const VolumeProdLimp = connection.define('volumeProdLimp', 
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
        dimAltura: {
            type: Sequelize.DECIMAL(8,2),
            allowNull: true
        },
        dimRaio: {
            type: Sequelize.DECIMAL(8,2),
            allowNull: true
        }
    }
);

VolumeProdLimp.sync({force:false});
export default VolumeProdLimp;
