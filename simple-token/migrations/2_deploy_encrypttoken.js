var encryptToken = artifacts.require('./EncryptToken');

module.exports = function(deployer) {
  deployer.deploy(encryptToken);
};
