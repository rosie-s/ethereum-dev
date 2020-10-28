  
const Counter = artifacts.require("Counter");
const MyContract = artifacts.require("MyContract");
const MyContract2 = artifacts.require("MyContract2");
const HotelRoom = artifacts.require("HotelRoom");
const MyContract3 = artifacts.require("MyContract3");

module.exports = function (deployer) {
  deployer.deploy(Counter);
  deployer.deploy(MyContract);
  deployer.deploy(MyContract2);
  deployer.deploy(HotelRoom);
  deployer.deploy(MyContract3, "hey");
};