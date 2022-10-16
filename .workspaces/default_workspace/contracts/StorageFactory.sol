pragma solidity ^0.8.0;
// I'm a comment!
// SPDX-License-Identifier: MIT

//pragma solidity 0.8.8;
 pragma solidity ^0.8.0;

import "./SimpleStorage.sol";//diğer smart contractı direk yapıştırmak yerine import ediyoruz
contract StorageFactory{
    SimpleStorage[] public simpleStorageArray;

function createSimpleStorageContract()public {
  SimpleStorage simpleStorage=new SimpleStorage();
  simpleStorageArray.push(simpleStorage);
}
function sfStore(uint256  _simpleStorageIndex,uint256 _simpleStorageNumber) public{
    //adress
    //ABI= the ABI  tell our code exactly how it can interact with the contract
  simpleStorageArray[_simpleStorageIndex].store(_simpleStorageNumber);
  
}
function sfGet(uint256 _simpleStorageIndex) public view returns (uint256){
   return simpleStorageArray[_simpleStorageIndex].retrieve();
  
}
}