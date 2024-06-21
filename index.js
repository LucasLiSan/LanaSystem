/* ----------\/ IMPORTAÇÃO DE MÓDULOS \/---------- */
import express from "express";
import session from "express-session";
import flash from "express-flash";
/* ----------/\ IMPORTAÇÃO DE MÓDULOS /\---------- */
const app = express();

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

/* ----------\/ ROTA PRINCIPAL \/---------- */
app.get('/home', function(req, res) { res.render("index"); });
/* ----------/\ ROTA PRINCIPAL /\---------- */

/* ----------\/ INICIANDO SERVIDOR \/---------- */
const port = 8080;
//const server = '192.168.9.74';

app.listen(port, function(erro){
    if(erro){ console.log("Ocorreu um erro!"); }
    else { console.log("Servidor iniciado com sucesso!"); }
});
/* ----------/\ INICIANDO SERVIDOR /\---------- */