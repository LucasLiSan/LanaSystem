/* ---------- MODEL DA LISTA DOS FORNECEDORES ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const Fornecedores = connection.define('fornecedores', 
    {
        idFornecedor: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        nomeFornecedor: {
            type: Sequelize.STRING,
            allowNull: false
        }
    }
);

Fornecedores.sync({force:false});
export default Fornecedores;