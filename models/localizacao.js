/* ---------- MODEL DO ENDEREÇO DOS PRODUTOS ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const Localizacao = connection.define('localizacao',
    {
        idLocal: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        armario: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        prateleira: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        idProdutoGuardado: {
            type: Sequelize.INTEGER,
            allowNull: false,
        },
        qtdPrdoGuardado: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        localArmario: {
            type: Sequelize.STRING,
            allowNull: false
        }
    }
);

Localizacao.sync({force:false});
export default Localizacao;