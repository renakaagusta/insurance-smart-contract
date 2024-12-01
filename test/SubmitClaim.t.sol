// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "lib/openzeppelin-contracts/contracts/token/ERC20/IERC20.sol";
import "lib/openzeppelin-contracts/contracts/token/ERC20/extensions/ERC4626.sol";

import {Test, console} from "forge-std/Test.sol";
import {IInsuranceFactory} from "src/IInsuranceFactory.sol";
import {IInsurancePool} from "src/IInsurancePool.sol";
import {IInsuranceServiceManager} from "src/IInsuranceServiceManager.sol";

contract SubmitClaimTest is Test {
    address private deployer;

    address usde = 0xb60971942E4528A811D24826768Bc91ad1383D21;
    address stakedUSDe = 0xD185B4846E5fd5419fD4D077dc636084BEfC51C0;
    address serviceManager = 0xC54c6f1296C01B840927B303Fd5DFea076599feC;
    address insurancePool = 0x455c5719Cc7c39420c3dA84a5E26de2c859DD3a4;
    address insuranceFactory = 0x45dC37Fe52a97A38B52F3f29633776b4A04324a5;

    function setUp() public {
        deployer = vm.rememberKey(vm.envUint("PRIVATE_KEY_2"));
    }

    function test_SubmitClaim() public {
        vm.startPrank(insurancePool);

        address[] memory allInsurancePools = IInsuranceFactory(insuranceFactory).getAllInsurancePools();
       
        // console.log(allInsurancePools[0]);
        // console.log(IInsuranceFactory(insuranceFactory).registeredPools(0x455c5719Cc7c39420c3dA84a5E26de2c859DD3a4));

        // IInsurancePool(insurancePool).submitClaim();

        IInsuranceServiceManager(serviceManager).createNewClaim(insurancePool, 0x70997970C51812dc3A010C7d01b50e0d17dc79C8, 20000000, 0);
    }
}
