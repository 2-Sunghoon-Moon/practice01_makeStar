// SPDX-License-Identifier: MIT

pragma solidity ^0.8.13;

import "forge-std/console.sol";

contract Pyramid {
    function run(uint _target) view public returns (string memory _out) {
        _out = "";
        

        for(uint i=0; i<_target; i++) {
            for(uint j=0; j<i+1; j++) {
                _out = string.concat(_out, "*");
            }
            _out = string.concat(_out, "\n");
        }

        console.log("Result: %s", _out);

        return _out;
    }
}
