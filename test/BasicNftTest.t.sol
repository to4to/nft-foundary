// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.20;

import{Test } from "forge-std/Test.sol";    
import {BasicNft} from "../src/BasicNft.sol";
import{DeployBasicNft} from "../script/DeployBasicNft.s.sol";

contract BasicNftTest is Test{
DeployBasicNft deployer;
BasicNft basicNft;

function setUp() public   {
deployer = new DeployBasicNft();
basicNft = deployer.run();
}



function testNameIsCorrect() public view {
  string memory actualName = basicNft.name(); 
    string memory expectedName = "Dogie";

    //assertEq(actualName, expectedName);
    assertEq(keccak256(abi.encodePacked(actualName)), keccak256(abi.encodePacked(expectedName)));
}
}

//8.23