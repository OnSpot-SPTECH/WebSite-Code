var express = require("express");
var router = express.Router();

var dashboardController = require("../controllers/dashboardController");

router.get("/obterDadosGraficos/:id", function (req, res) {
    dashboardController.obterDadosGraficos(req, res);
});

router.get("/atualizarGrafico/:id", function (req, res) {
    dashboardController.atualizarGrafico(req, res);
})

module.exports = router;