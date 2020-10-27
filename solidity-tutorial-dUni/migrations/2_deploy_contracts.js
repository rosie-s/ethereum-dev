  
const Counter = artifacts.require("Counter");
const MyContract = artifacts.require("MyContract");
const MyContract2 = artifacts.require("MyContract2");

module.exports = function (deployer) {
  deployer.deploy(Counter);
  deployer.deploy(MyContract);
  deployer.deploy(MyContract2);
};