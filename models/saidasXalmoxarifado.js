/* ---------- MODEL RELACIONAL PARA PEDIDOS DE PRODUTOS NO ALMOXARIFADO (RELAÇÃO: ALMOXARIFADO-CLIENTES) ---------- */

import Sequelize from "sequelize";
import connection from "../configuration/sequelizeConfig.js";
import Almoxarifado from "./almoxarifado.js";
import Clientes from "./cliente.js";

const SaidasProds = connection.define('saidasXalmoxarifado',
    {
        idSaidaEstoque: {
            type: Sequelize.INTEGER,
            autoIncrement: true,
            primaryKey:true
        },
        idClienteSolicita: {
            type: Sequelize.INTEGER,
            allowNull: false,
            references: {
                model: Clientes,
                key: 'idCliente'
            }
        },
        idProdSai: {
            type: Sequelize.INTEGER,
            allowNull: false,
            references: {
                model: Almoxarifado,
                key: 'idProduto'
            }
        },
        qtdProdSolicitado: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        dataSolicitacao: {
            type: Sequelize.DATE,
            allowNull: false
        },
        origem: {
            type: Sequelize.INTEGER,
            allowNull: false
        },
        statusDoPedido: {
            type: Sequelize.STRING,
            allowNull: false
        },
        qtdEntregue: {
            type: Sequelize.INTEGER,
            allowNull: false
        }
    }
);

SaidasProds.belongsTo(Almoxarifado, { foreingKey: 'idProdSai', as: 'solicitacao'});
SaidasProds.belongsTo(Clientes, { foreingKey: 'idClienteSolicita', as: 'solicitante'});

SaidasProds.sync({force:false});
export default SaidasProds;