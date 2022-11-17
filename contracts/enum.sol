// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;
contract Day3 {
  enum ProductChoice{Small,Medium,Large}
  ProductChoice public choice;
  ProductChoice constant defaultChoice = ProductChoice.Medium;
 
  function set_large()external{
      choice = ProductChoice.Large;
  }

  function getChoice()public view returns(ProductChoice){
      return choice;
  }

  function getDefaultChoice()public view returns(uint){
      return uint(defaultChoice);
  }
   
}
