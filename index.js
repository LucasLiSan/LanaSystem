/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
import session from "express-session";
import flash from "express-flash";
import ip from "ip";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
const app = express();

/* ----------\/ IMPORTANDO E INICIANDO OS CONTROLLERS \/---------- */
import almoxarifadoController from "./controllers/almoxarifadoController.js"
import eCozinhaController from "./controllers/eCozinhaController.js"
import eLimpezaController from "./controllers/eLimpezaController.js"
import homeController from "./controllers/homeController.js"
import patrimonioController from "./controllers/patrimonioController.js"

app.use("/", almoxarifadoController);
app.use("/", eCozinhaController);
app.use("/", eLimpezaController);
app.use("/", homeController);
app.use("/", patrimonioController);
/* ----------/\ IMPORTANDO E INICIANDO OS CONTROLLERS /\---------- */

/* ----------\/ DEFINIÇÕES BÁSICAS \/---------- */
app.set('view engine', 'ejs');
app.use(express.static('public'));
app.use(express.urlencoded({ extended:false}));
app.use(express.json());
app.use(flash());
app.use(session({
    secret: "Secret",
    cookie: { maxAge: 86400000},
    saveUninitialized: false,
    resave: false
}));
/* ----------/\ DEFINIÇÕES BÁSICAS /\---------- */

/* ----------\/ INICIANDO SERVIDOR \/---------- */
const port = 8080;
//const server = '192.168.9.74';
const myServer = ip.address();

app.listen(port, myServer, function(erro){
    if(erro){ console.log("Ocorreu um erro!"); }
    else { console.log("Servidor iniciado com sucesso!"); }
});
/* ----------/\ INICIANDO SERVIDOR /\---------- */