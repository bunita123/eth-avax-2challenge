// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SmartContract{
     string Str = "Bunita";
     uint public Account_Balance = 0;

     function ViewType()internal view returns(string memory){
        return Str;
 
     }
     string public View_Name = ViewType();

     function PureType(int a,int b)internal pure returns(int){
        return a + b;
     }

     int public Sum = PureType(5,10);

     function Add_Money(uint _money)public payable returns(string memory){
         
         Account_Balance += _money;
         return "Money added successfully";
     }
}
