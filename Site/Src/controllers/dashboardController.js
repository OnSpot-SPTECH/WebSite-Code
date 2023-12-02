var dashboardModel = require("../models/dashboardModel");

function obterDadosGraficos(req, res) {

    const limite_linhas = 7;

    var id = req.params.id;

    console.log(`Recuperando as ultimas medidas`);

    dashboardModel.obterDadosGraficos(id, limite_linhas).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

function atualizarGrafico(req, res) {

    var id = req.params.id;

    console.log(`Recuperando medidas em tempo real`);

    dashboardModel.atualizarGrafico(id).then(function (resultado) {
        if (resultado.length > 0) {
            res.status(200).json(resultado);
        } else {
            res.status(204).send("Nenhum resultado encontrado!")
        }
    }).catch(function (erro) {
        console.log(erro);
        console.log("Houve um erro ao buscar as ultimas medidas.", erro.sqlMessage);
        res.status(500).json(erro.sqlMessage);
    });
}

module.exports = {
    obterDadosGraficos,
    atualizarGrafico  
}
