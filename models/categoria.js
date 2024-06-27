/* ---------- MODEL DAS CATEGORIAS DOS PRODUTOS ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const Categorias = connection.define('categorias',
    {
        idCategoria: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        categoria: {
            type: Sequelize.STRING,
            allowNull: false
        }
    }
);

Categorias.sync({force:false});
export default Categorias;