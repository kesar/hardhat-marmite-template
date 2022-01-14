// SPDX-License-Identifier: WTFPL
pragma solidity 0.8.9;

contract Foo {
    uint256 public bar;

    function test() external {
        @start<Test1>
        require(msg.sender != address(0), "");
        @end

        @start<Test2>
        require(msg.sender != address(0), "errorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerrorerror");
        @end
        bar = 2;
    }
}
