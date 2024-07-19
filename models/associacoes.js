import Almoxarifado from "./almoxarifado.js";
import Categorias from "./categoria.js";
import Localizacao from "./localizacao.js";
import EstoqueLimpeza from "./eLimpeza.js";
import CategoriasProdLimp from "./categoriaProdLimp.js";
import LocalizacaoLimpeza from "./localizacaoLimpeza.js";

/* ---------- \/ ASSOCIAÇÃO ALMOXARIFADO-CATEGORIA \/ ---------- */
Almoxarifado.belongsTo(Categorias, { foreignKey: 'categoriaProd', as: 'categoria' });
Almoxarifado.hasOne(Localizacao, { foreignKey: 'idProdutoGuardado', as: 'localizacao' });
/* ---------- /\ ASSOCIAÇÃO ALMOXARIFADO-CATEGORIA /\ ---------- */

/* ---------- \/ ASSOCIAÇÃO ALMOXARIFADO-LOCALIZAÇÃO \/ ---------- */
Localizacao.belongsTo(Almoxarifado, { foreignKey: 'idProdutoGuardado', as: 'produto' });
/* ---------- /\ ASSOCIAÇÃO ALMOXARIFADO-LOCALIZAÇÃO /\ ---------- */

/* ---------- \/ ASSOCIAÇÃO ESTOQUE LIMPEZA-CATEGORIA \/ ---------- */
EstoqueLimpeza.belongsTo(CategoriasProdLimp, { foreignKey: 'categoriaProd', as: 'categoriaProdLimp' });
EstoqueLimpeza.hasOne(LocalizacaoLimpeza, { foreignKey: 'idProdutoGuardado', as: 'localizacaoProdLimp' });
/* ---------- /\ ASSOCIAÇÃO ESTOQUE LIMPEZA-CATEGORIA /\ ---------- */

/* ---------- \/ ASSOCIAÇÃO ESTOQUE LIMPEZA-LOCALIZAÇÃO \/ ---------- */
LocalizacaoLimpeza.belongsTo(EstoqueLimpeza, { foreignKey: 'idProdutoGuardado', as: 'produtoLimpeza' });
/* ---------- /\ ASSOCIAÇÃO ESTOQUE LIMPEZA-LOCALIZAÇÃO /\ ---------- */