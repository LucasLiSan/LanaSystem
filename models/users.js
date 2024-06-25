/* ---------- MODEL DOS USUÁRIOS DA MANUTENÇÃO SISTEMA ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const Users = connection.define('usuarios', 
    {
        idUser: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        nomeUser: {
            type: Sequelize.STRING,
            allowNull: false
        },
        cargoUser: {
            type: Sequelize.STRING,
            allowNull: false
        },
        loginUser: {
            type: Sequelize.STRING,
            allowNull: false
        },
        senhaUser: {
            type: Sequelize.STRING,
            allowNull: false
        }
    }
);

Users.sync({force:false});
export default Users;