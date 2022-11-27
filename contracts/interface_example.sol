pragma solidity 0.8.9;
interface IWallet{
    function getBalance()external view returns(uint);
} 

//inherit and implement the Iwallet interfacce
contract Wallet is IWallet{

    uint balance = 100;
    function getBalance()public view override returns(uint){
        return balance;
    }
} 
