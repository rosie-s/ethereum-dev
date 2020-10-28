// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.4.22 <0.8.0;

contract Ownable{
    address owner;
    
    constructor ()  {
        owner = msg.sender;
    }

    // Modifier so only owner of SC can call this
    modifier onlyOwner(){
        require(msg.sender == owner, 'Must be owner');
        _;
    }
    
}

contract SecretVault{
    string secret;
    constructor (string memory _secret)  {
        secret = _secret;
    }
    
    function getSecret() public view  returns (string memory){
        return secret;
    }
}

// Factory - SC creates multiple SC
contract MyContract3 is Ownable{

    address secretVault;

    constructor (string memory _secret)  {
        SecretVault _secretVault = new SecretVault(_secret);
        secretVault = address(_secretVault);
        super;
    }

    // We want to restrict who can call this function so secret isn't public.
    function getSecret() public view onlyOwner returns (string memory){
        SecretVault _secretVault = SecretVault(secretVault);
        return _secretVault.getSecret();
    }
}