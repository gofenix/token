var bloggerCoin = artifacts.require('./BloggerCoin.sol');

module.exports = function(deployer) {
  deployer.deploy(bloggerCoin);
};
