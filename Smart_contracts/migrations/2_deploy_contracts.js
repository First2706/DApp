var AppData = artifacts.require('MyData'); //เอา smart Contract มาDeploy บน blockchain artifacts.require(ชื่อ smart Contract)

module.exports = function(deployer) { 
    deployer.deploy(AppData);
};
