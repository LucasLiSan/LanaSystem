/* ---------- MODEL DOS USUÁRIOS QUE USARÃO O SISTEMA ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const Clientes = connection.define('clientes', 
    {
        idCliente: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        nomeCliente: {
            type: Sequelize.STRING,
            allowNull: false
        },
        tipoCliente: {
            type: Sequelize.STRING,
            allowNull: false
        },
        loginCliente: {
            type: Sequelize.STRING,
            allowNull: false
        },
        senhaCliente: {
            type: Sequelize.STRING,
            allowNull: false
        }
    }
);

Clientes.sync({force:false});
export default Clientes;