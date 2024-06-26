/* ---------- MODEL RELACIONAL DE ENTRADA DE PRODUTOS NO ALMOXARIFADO (RELAÇÃO: ALMOXARIFADO-FORNECEDOR) ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";
import Almoxarifado from "./almoxarifado";
import Fornecedores from "./fornecedores";

const EntradasProds = connection.define('entradasXalmoxarifado',
    {
        idEntradaEstoque: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        idFornecedorEntrega: {
            type: Sequelize.INTEGER,
            allowNull:false,
            references: {
                model: Fornecedores,
                key: 'idFornecedor'
            }
        },
        idProdEntraga: {
            type: Sequelize.INTEGER,
            allowNull:false,
            references: {
                model: Almoxarifado,
                key: 'idProduto'
            }            
        },
        qtdPrdoEntra: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        dataEntrada: {
            type: Sequelize.DATE,
            allowNull: false
        },
        destino: {
            type: Sequelize.INTEGER,
            allowNull: false            
        }
    }
);

EntradasProds.belongsTo(Almoxarifado, { foreignKey: 'idProdEntraga', as: 'produtoNovo'});
EntradasProds.belongsTo(Fornecedores, { foreignKey: 'idFornecedorEntrega', as: 'fornecedor'});

EntradasProds.sync({force:false});
export default EntradasProds;