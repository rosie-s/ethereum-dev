  
const Counter = artifacts.require("Counter");
const MyContract = artifacts.require("MyContract");

module.exports = function (deployer) {
  deployer.deploy(Counter);
  deployer.deploy(MyContract);
};