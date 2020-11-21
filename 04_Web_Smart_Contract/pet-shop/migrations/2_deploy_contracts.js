/*var getAdoption = artifacts.requrire("Adoption");

module.exports = function(deployer){
    deployer.deploy(getAdoption); //ต้องการจะย้าย smart contract ไปใส่ไไว้ใน chain 
};*/

var Adoption = artifacts.require("Adoption");

module.exports = function(deployer) {
  deployer.deploy(Adoption);
};
