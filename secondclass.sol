pragma solidity 0.8.19;

contract Helloworld{
    function hi() external pure returns (string memory) {
        return "Helloworld";
    }
}


contract counter {
    uint public count;
    function increase() external {
        count += 1;
    }
    
    function decrease() external {
        count -= 1;
    }
}

contract SimpleStorage {
    uint private data;
    function EditData(uint new_data) external {
        data = new_data;
    }
}

contract Calculator{
    function add(uint a, uint b) external pure returns(uint){
        return a + b;
    }
    
}

contract SimpleSmartContract{
    uint public  data;
    constructor (uint _address) {
        data = _address ;
    }
}

contract AccessControl {
    address public  kingaddress = 0xf49d463576bcF2bB97239DEbdbF3e97B7cBCA7b9;
    function somefunction() external {
        require(msg.sender == kingaddress , " ur not my load");
    }
}