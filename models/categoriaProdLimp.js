/* ---------- MODEL DAS CATEGORIAS DOS PRODUTOS ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";

const CategoriasProdLimp = connection.define('categoriasProdLimp',
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

CategoriasProdLimp.sync({force:false});
export default CategoriasProdLimp;