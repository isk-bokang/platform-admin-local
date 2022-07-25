INSERT INTO chain(chain_id, name, chain_type, rpc_url) VALUES ('31337', 'HARDHAT', 'NETWORK 1', 'http://localhost:5432');
INSERT INTO chain(chain_id, name, chain_type, rpc_url) VALUES ('1001', 'BAOBAB', 'NETWORK 2', 'https://api.baobab.klaytn.net:8651');

INSERT INTO contract(abi, bytecode, contract_type, name) VALUES (
'[
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "owner",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        }
      ],
      "stateMutability": "nonpayable",
      "type": "constructor"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "account",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "operator",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "bool",
          "name": "approved",
          "type": "bool"
        }
      ],
      "name": "ApprovalForAll",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "operator",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256[]",
          "name": "ids",
          "type": "uint256[]"
        },
        {
          "indexed": false,
          "internalType": "uint256[]",
          "name": "values",
          "type": "uint256[]"
        }
      ],
      "name": "TransferBatch",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": true,
          "internalType": "address",
          "name": "operator",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "indexed": true,
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "id",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "value",
          "type": "uint256"
        }
      ],
      "name": "TransferSingle",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "string",
          "name": "value",
          "type": "string"
        },
        {
          "indexed": true,
          "internalType": "uint256",
          "name": "id",
          "type": "uint256"
        }
      ],
      "name": "URI",
      "type": "event"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "account",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "id",
          "type": "uint256"
        }
      ],
      "name": "balanceOf",
      "outputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address[]",
          "name": "accounts",
          "type": "address[]"
        },
        {
          "internalType": "uint256[]",
          "name": "ids",
          "type": "uint256[]"
        }
      ],
      "name": "balanceOfBatch",
      "outputs": [
        {
          "internalType": "uint256[]",
          "name": "",
          "type": "uint256[]"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "account",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "operator",
          "type": "address"
        }
      ],
      "name": "isApprovedForAll",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "internalType": "uint256[]",
          "name": "ids",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256[]",
          "name": "amounts",
          "type": "uint256[]"
        },
        {
          "internalType": "bytes",
          "name": "data",
          "type": "bytes"
        }
      ],
      "name": "safeBatchTransferFrom",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "from",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "to",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "id",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "amount",
          "type": "uint256"
        },
        {
          "internalType": "bytes",
          "name": "data",
          "type": "bytes"
        }
      ],
      "name": "safeTransferFrom",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "operator",
          "type": "address"
        },
        {
          "internalType": "bool",
          "name": "approved",
          "type": "bool"
        }
      ],
      "name": "setApprovalForAll",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "bytes4",
          "name": "interfaceId",
          "type": "bytes4"
        }
      ],
      "name": "supportsInterface",
      "outputs": [
        {
          "internalType": "bool",
          "name": "",
          "type": "bool"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        }
      ],
      "name": "uri",
      "outputs": [
        {
          "internalType": "string",
          "name": "",
          "type": "string"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    }
  ]',
                                                                 '0x60806040523480156200001157600080fd5b506040516200343d3803806200343d8339818101604052810190620000379190620006b2565b604051806020016040528060008152506200005881620000ab60201b60201c565b50620000a3826001836040518060400160405280600481526020017f3078303000000000000000000000000000000000000000000000000000000000815250620000c760201b60201c565b505062000dab565b8060029080519060200190620000c3929190620005bd565b5050565b600073ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff1614156200013a576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401620001319062000904565b60405180910390fd5b60006200014c620002af60201b60201c565b905060006200016185620002b760201b60201c565b905060006200017685620002b760201b60201c565b90506200018f836000898585896200038060201b60201c565b8460008088815260200190815260200160002060008973ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000206000828254620001f0919062000995565b925050819055508673ffffffffffffffffffffffffffffffffffffffff16600073ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff167fc3d58168c5ae7397731d063d5bbf3d657854427343f4c083240f7aacaa2d0f6289896040516200027092919062000926565b60405180910390a46200028f836000898585896200038860201b60201c565b620002a6836000898989896200039060201b60201c565b50505050505050565b600033905090565b60606000600167ffffffffffffffff811115620002fd577f4e487b7100000000000000000000000000000000000000000000000000000000600052604160045260246000fd5b6040519080825280602002602001820160405280156200032c5781602001602082028036833780820191505090505b50905082816000815181106200036b577f4e487b7100000000000000000000000000000000000000000000000000000000600052603260045260246000fd5b60200260200101818152505080915050919050565b505050505050565b505050505050565b620003bc8473ffffffffffffffffffffffffffffffffffffffff166200059a60201b620007ac1760201c565b1562000592578373ffffffffffffffffffffffffffffffffffffffff1663f23a6e6187878686866040518663ffffffff1660e01b81526004016200040595949392919062000838565b602060405180830381600087803b1580156200042057600080fd5b505af19250505080156200045457506040513d601f19601f82011682018060405250810190620004519190620006f3565b60015b62000506576200046362000b8b565b806308c379a01415620004c757506200047b62000cbb565b80620004885750620004c9565b806040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401620004be91906200089c565b60405180910390fd5b505b6040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401620004fd90620008c0565b60405180910390fd5b63f23a6e6160e01b7bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916817bffffffffffffffffffffffffffffffffffffffffffffffffffffffff19161462000590576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016200058790620008e2565b60405180910390fd5b505b505050505050565b6000808273ffffffffffffffffffffffffffffffffffffffff163b119050919050565b828054620005cb9062000a92565b90600052602060002090601f016020900481019282620005ef57600085556200063b565b82601f106200060a57805160ff19168380011785556200063b565b828001600101855582156200063b579182015b828111156200063a5782518255916020019190600101906200061d565b5b5090506200064a91906200064e565b5090565b5b80821115620006695760008160009055506001016200064f565b5090565b6000815190506200067e8162000d5d565b92915050565b600081519050620006958162000d77565b92915050565b600081519050620006ac8162000d91565b92915050565b60008060408385031215620006c657600080fd5b6000620006d6858286016200066d565b9250506020620006e9858286016200069b565b9150509250929050565b6000602082840312156200070657600080fd5b6000620007168482850162000684565b91505092915050565b6200072a81620009f2565b82525050565b60006200073d826200095d565b62000749818562000973565b93506200075b81856020860162000a5c565b620007668162000bb0565b840191505092915050565b60006200077e8262000968565b6200078a818562000984565b93506200079c81856020860162000a5c565b620007a78162000bb0565b840191505092915050565b6000620007c160348362000984565b9150620007ce8262000bce565b604082019050919050565b6000620007e860288362000984565b9150620007f58262000c1d565b604082019050919050565b60006200080f60218362000984565b91506200081c8262000c6c565b604082019050919050565b620008328162000a52565b82525050565b600060a0820190506200084f60008301886200071f565b6200085e60208301876200071f565b6200086d604083018662000827565b6200087c606083018562000827565b818103608083015262000890818462000730565b90509695505050505050565b60006020820190508181036000830152620008b8818462000771565b905092915050565b60006020820190508181036000830152620008db81620007b2565b9050919050565b60006020820190508181036000830152620008fd81620007d9565b9050919050565b600060208201905081810360008301526200091f8162000800565b9050919050565b60006040820190506200093d600083018562000827565b6200094c602083018462000827565b9392505050565b6000604051905090565b600081519050919050565b600081519050919050565b600082825260208201905092915050565b600082825260208201905092915050565b6000620009a28262000a52565b9150620009af8362000a52565b9250827fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff03821115620009e757620009e662000afe565b5b828201905092915050565b6000620009ff8262000a32565b9050919050565b60007fffffffff0000000000000000000000000000000000000000000000000000000082169050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000819050919050565b60005b8381101562000a7c57808201518184015260208101905062000a5f565b8381111562000a8c576000848401525b50505050565b6000600282049050600182168062000aab57607f821691505b6020821081141562000ac25762000ac162000b2d565b5b50919050565b62000ad38262000bb0565b810181811067ffffffffffffffff8211171562000af55762000af462000b5c565b5b80604052505050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b7f4e487b7100000000000000000000000000000000000000000000000000000000600052602260045260246000fd5b7f4e487b7100000000000000000000000000000000000000000000000000000000600052604160045260246000fd5b600060033d111562000bad5760046000803e62000baa60005162000bc1565b90505b90565b6000601f19601f8301169050919050565b60008160e01c9050919050565b7f455243313135353a207472616e7366657220746f206e6f6e204552433131353560008201527f526563656976657220696d706c656d656e746572000000000000000000000000602082015250565b7f455243313135353a204552433131353552656365697665722072656a6563746560008201527f6420746f6b656e73000000000000000000000000000000000000000000000000602082015250565b7f455243313135353a206d696e7420746f20746865207a65726f2061646472657360008201527f7300000000000000000000000000000000000000000000000000000000000000602082015250565b600060443d101562000ccd5762000d5a565b62000cd762000953565b60043d036004823e80513d602482011167ffffffffffffffff8211171562000d0157505062000d5a565b808201805167ffffffffffffffff81111562000d21575050505062000d5a565b80602083010160043d03850181111562000d4057505050505062000d5a565b62000d518260200185018662000ac8565b82955050505050505b90565b62000d6881620009f2565b811462000d7457600080fd5b50565b62000d828162000a06565b811462000d8e57600080fd5b50565b62000d9c8162000a52565b811462000da857600080fd5b50565b6126828062000dbb6000396000f3fe608060405234801561001057600080fd5b50600436106100875760003560e01c80634e1273f41161005b5780634e1273f414610138578063a22cb46514610168578063e985e9c514610184578063f242432a146101b457610087565b8062fdd58e1461008c57806301ffc9a7146100bc5780630e89341c146100ec5780632eb2c2d61461011c575b600080fd5b6100a660048036038101906100a1919061181f565b6101d0565b6040516100b39190611e5c565b60405180910390f35b6100d660048036038101906100d191906118c7565b610299565b6040516100e39190611cdf565b60405180910390f35b61010660048036038101906101019190611919565b61037b565b6040516101139190611cfa565b60405180910390f35b61013660048036038101906101319190611695565b61040f565b005b610152600480360381019061014d919061185b565b6104b0565b60405161015f9190611c86565b60405180910390f35b610182600480360381019061017d91906117e3565b610661565b005b61019e60048036038101906101999190611659565b610677565b6040516101ab9190611cdf565b60405180910390f35b6101ce60048036038101906101c99190611754565b61070b565b005b60008073ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff161415610241576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161023890611d5c565b60405180910390fd5b60008083815260200190815260200160002060008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054905092915050565b60007fd9b67a26000000000000000000000000000000000000000000000000000000007bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916827bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916148061036457507f0e89341c000000000000000000000000000000000000000000000000000000007bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916827bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916145b806103745750610373826107cf565b5b9050919050565b60606002805461038a906120cb565b80601f01602080910402602001604051908101604052809291908181526020018280546103b6906120cb565b80156104035780601f106103d857610100808354040283529160200191610403565b820191906000526020600020905b8154815290600101906020018083116103e657829003601f168201915b50505050509050919050565b610417610839565b73ffffffffffffffffffffffffffffffffffffffff168573ffffffffffffffffffffffffffffffffffffffff16148061045d575061045c85610457610839565b610677565b5b61049c576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161049390611dbc565b60405180910390fd5b6104a98585858585610841565b5050505050565b606081518351146104f6576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016104ed90611e1c565b60405180910390fd5b6000835167ffffffffffffffff811115610539577f4e487b7100000000000000000000000000000000000000000000000000000000600052604160045260246000fd5b6040519080825280602002602001820160405280156105675781602001602082028036833780820191505090505b50905060005b8451811015610656576106008582815181106105b2577f4e487b7100000000000000000000000000000000000000000000000000000000600052603260045260246000fd5b60200260200101518583815181106105f3577f4e487b7100000000000000000000000000000000000000000000000000000000600052603260045260246000fd5b60200260200101516101d0565b828281518110610639577f4e487b7100000000000000000000000000000000000000000000000000000000600052603260045260246000fd5b6020026020010181815250508061064f9061212e565b905061056d565b508091505092915050565b61067361066c610839565b8383610baf565b5050565b6000600160008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060009054906101000a900460ff16905092915050565b610713610839565b73ffffffffffffffffffffffffffffffffffffffff168573ffffffffffffffffffffffffffffffffffffffff161480610759575061075885610753610839565b610677565b5b610798576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161078f90611d7c565b60405180910390fd5b6107a58585858585610d1c565b5050505050565b6000808273ffffffffffffffffffffffffffffffffffffffff163b119050919050565b60007f01ffc9a7000000000000000000000000000000000000000000000000000000007bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916827bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916149050919050565b600033905090565b8151835114610885576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161087c90611e3c565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff1614156108f5576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016108ec90611d9c565b60405180910390fd5b60006108ff610839565b905061090f818787878787610fb8565b60005b8451811015610b0c576000858281518110610956577f4e487b7100000000000000000000000000000000000000000000000000000000600052603260045260246000fd5b60200260200101519050600085838151811061099b577f4e487b7100000000000000000000000000000000000000000000000000000000600052603260045260246000fd5b60200260200101519050600080600084815260200190815260200160002060008b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054905081811015610a3c576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610a3390611ddc565b60405180910390fd5b81810360008085815260200190815260200160002060008c73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508160008085815260200190815260200160002060008b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000206000828254610af19190611fbf565b9250508190555050505080610b059061212e565b9050610912565b508473ffffffffffffffffffffffffffffffffffffffff168673ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff167f4a39dc06d4c0dbc64b70af90fd698a233a518aa5d07e595d983b8c0526c8f7fb8787604051610b83929190611ca8565b60405180910390a4610b99818787878787610fc0565b610ba7818787878787610fc8565b505050505050565b8173ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff161415610c1e576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610c1590611dfc565b60405180910390fd5b80600160008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060006101000a81548160ff0219169083151502179055508173ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff167f17307eab39ab6107e8899845ad3d59bd9653f200f220920489ca2b5937696c3183604051610d0f9190611cdf565b60405180910390a3505050565b600073ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff161415610d8c576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610d8390611d9c565b60405180910390fd5b6000610d96610839565b90506000610da3856111af565b90506000610db0856111af565b9050610dc0838989858589610fb8565b600080600088815260200190815260200160002060008a73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054905085811015610e57576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401610e4e90611ddc565b60405180910390fd5b85810360008089815260200190815260200160002060008b73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508560008089815260200190815260200160002060008a73ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000206000828254610f0c9190611fbf565b925050819055508773ffffffffffffffffffffffffffffffffffffffff168973ffffffffffffffffffffffffffffffffffffffff168573ffffffffffffffffffffffffffffffffffffffff167fc3d58168c5ae7397731d063d5bbf3d657854427343f4c083240f7aacaa2d0f628a8a604051610f89929190611e77565b60405180910390a4610f9f848a8a86868a610fc0565b610fad848a8a8a8a8a611275565b505050505050505050565b505050505050565b505050505050565b610fe78473ffffffffffffffffffffffffffffffffffffffff166107ac565b156111a7578373ffffffffffffffffffffffffffffffffffffffff1663bc197c8187878686866040518663ffffffff1660e01b815260040161102d959493929190611bc4565b602060405180830381600087803b15801561104757600080fd5b505af192505050801561107857506040513d601f19601f8201168201806040525081019061107591906118f0565b60015b61111e57611084612204565b806308c379a014156110e1575061109961255a565b806110a457506110e3565b806040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016110d89190611cfa565b60405180910390fd5b505b6040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161111590611d1c565b60405180910390fd5b63bc197c8160e01b7bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916817bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916146111a5576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161119c90611d3c565b60405180910390fd5b505b505050505050565b60606000600167ffffffffffffffff8111156111f4577f4e487b7100000000000000000000000000000000000000000000000000000000600052604160045260246000fd5b6040519080825280602002602001820160405280156112225781602001602082028036833780820191505090505b5090508281600081518110611260577f4e487b7100000000000000000000000000000000000000000000000000000000600052603260045260246000fd5b60200260200101818152505080915050919050565b6112948473ffffffffffffffffffffffffffffffffffffffff166107ac565b15611454578373ffffffffffffffffffffffffffffffffffffffff1663f23a6e6187878686866040518663ffffffff1660e01b81526004016112da959493929190611c2c565b602060405180830381600087803b1580156112f457600080fd5b505af192505050801561132557506040513d601f19601f8201168201806040525081019061132291906118f0565b60015b6113cb57611331612204565b806308c379a0141561138e575061134661255a565b806113515750611390565b806040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016113859190611cfa565b60405180910390fd5b505b6040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016113c290611d1c565b60405180910390fd5b63f23a6e6160e01b7bffffffffffffffffffffffffffffffffffffffffffffffffffffffff1916817bffffffffffffffffffffffffffffffffffffffffffffffffffffffff191614611452576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161144990611d3c565b60405180910390fd5b505b505050505050565b600061146f61146a84611ec5565b611ea0565b9050808382526020820190508285602086028201111561148e57600080fd5b60005b858110156114be57816114a48882611572565b845260208401935060208301925050600181019050611491565b5050509392505050565b60006114db6114d684611ef1565b611ea0565b905080838252602082019050828560208602820111156114fa57600080fd5b60005b8581101561152a57816115108882611644565b8452602084019350602083019250506001810190506114fd565b5050509392505050565b600061154761154284611f1d565b611ea0565b90508281526020810184848401111561155f57600080fd5b61156a848285612089565b509392505050565b600081359050611581816125f0565b92915050565b600082601f83011261159857600080fd5b81356115a884826020860161145c565b91505092915050565b600082601f8301126115c257600080fd5b81356115d28482602086016114c8565b91505092915050565b6000813590506115ea81612607565b92915050565b6000813590506115ff8161261e565b92915050565b6000815190506116148161261e565b92915050565b600082601f83011261162b57600080fd5b813561163b848260208601611534565b91505092915050565b60008135905061165381612635565b92915050565b6000806040838503121561166c57600080fd5b600061167a85828601611572565b925050602061168b85828601611572565b9150509250929050565b600080600080600060a086880312156116ad57600080fd5b60006116bb88828901611572565b95505060206116cc88828901611572565b945050604086013567ffffffffffffffff8111156116e957600080fd5b6116f5888289016115b1565b935050606086013567ffffffffffffffff81111561171257600080fd5b61171e888289016115b1565b925050608086013567ffffffffffffffff81111561173b57600080fd5b6117478882890161161a565b9150509295509295909350565b600080600080600060a0868803121561176c57600080fd5b600061177a88828901611572565b955050602061178b88828901611572565b945050604061179c88828901611644565b93505060606117ad88828901611644565b925050608086013567ffffffffffffffff8111156117ca57600080fd5b6117d68882890161161a565b9150509295509295909350565b600080604083850312156117f657600080fd5b600061180485828601611572565b9250506020611815858286016115db565b9150509250929050565b6000806040838503121561183257600080fd5b600061184085828601611572565b925050602061185185828601611644565b9150509250929050565b6000806040838503121561186e57600080fd5b600083013567ffffffffffffffff81111561188857600080fd5b61189485828601611587565b925050602083013567ffffffffffffffff8111156118b157600080fd5b6118bd858286016115b1565b9150509250929050565b6000602082840312156118d957600080fd5b60006118e7848285016115f0565b91505092915050565b60006020828403121561190257600080fd5b600061191084828501611605565b91505092915050565b60006020828403121561192b57600080fd5b600061193984828501611644565b91505092915050565b600061194e8383611ba6565b60208301905092915050565b61196381612015565b82525050565b600061197482611f5e565b61197e8185611f8c565b935061198983611f4e565b8060005b838110156119ba5781516119a18882611942565b97506119ac83611f7f565b92505060018101905061198d565b5085935050505092915050565b6119d081612027565b82525050565b60006119e182611f69565b6119eb8185611f9d565b93506119fb818560208601612098565b611a0481612226565b840191505092915050565b6000611a1a82611f74565b611a248185611fae565b9350611a34818560208601612098565b611a3d81612226565b840191505092915050565b6000611a55603483611fae565b9150611a6082612244565b604082019050919050565b6000611a78602883611fae565b9150611a8382612293565b604082019050919050565b6000611a9b602b83611fae565b9150611aa6826122e2565b604082019050919050565b6000611abe602983611fae565b9150611ac982612331565b604082019050919050565b6000611ae1602583611fae565b9150611aec82612380565b604082019050919050565b6000611b04603283611fae565b9150611b0f826123cf565b604082019050919050565b6000611b27602a83611fae565b9150611b328261241e565b604082019050919050565b6000611b4a602983611fae565b9150611b558261246d565b604082019050919050565b6000611b6d602983611fae565b9150611b78826124bc565b604082019050919050565b6000611b90602883611fae565b9150611b9b8261250b565b604082019050919050565b611baf8161207f565b82525050565b611bbe8161207f565b82525050565b600060a082019050611bd9600083018861195a565b611be6602083018761195a565b8181036040830152611bf88186611969565b90508181036060830152611c0c8185611969565b90508181036080830152611c2081846119d6565b90509695505050505050565b600060a082019050611c41600083018861195a565b611c4e602083018761195a565b611c5b6040830186611bb5565b611c686060830185611bb5565b8181036080830152611c7a81846119d6565b90509695505050505050565b60006020820190508181036000830152611ca08184611969565b905092915050565b60006040820190508181036000830152611cc28185611969565b90508181036020830152611cd68184611969565b90509392505050565b6000602082019050611cf460008301846119c7565b92915050565b60006020820190508181036000830152611d148184611a0f565b905092915050565b60006020820190508181036000830152611d3581611a48565b9050919050565b60006020820190508181036000830152611d5581611a6b565b9050919050565b60006020820190508181036000830152611d7581611a8e565b9050919050565b60006020820190508181036000830152611d9581611ab1565b9050919050565b60006020820190508181036000830152611db581611ad4565b9050919050565b60006020820190508181036000830152611dd581611af7565b9050919050565b60006020820190508181036000830152611df581611b1a565b9050919050565b60006020820190508181036000830152611e1581611b3d565b9050919050565b60006020820190508181036000830152611e3581611b60565b9050919050565b60006020820190508181036000830152611e5581611b83565b9050919050565b6000602082019050611e716000830184611bb5565b92915050565b6000604082019050611e8c6000830185611bb5565b611e996020830184611bb5565b9392505050565b6000611eaa611ebb565b9050611eb682826120fd565b919050565b6000604051905090565b600067ffffffffffffffff821115611ee057611edf6121d5565b5b602082029050602081019050919050565b600067ffffffffffffffff821115611f0c57611f0b6121d5565b5b602082029050602081019050919050565b600067ffffffffffffffff821115611f3857611f376121d5565b5b611f4182612226565b9050602081019050919050565b6000819050602082019050919050565b600081519050919050565b600081519050919050565b600081519050919050565b6000602082019050919050565b600082825260208201905092915050565b600082825260208201905092915050565b600082825260208201905092915050565b6000611fca8261207f565b9150611fd58361207f565b9250827fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff0382111561200a57612009612177565b5b828201905092915050565b60006120208261205f565b9050919050565b60008115159050919050565b60007fffffffff0000000000000000000000000000000000000000000000000000000082169050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000819050919050565b82818337600083830152505050565b60005b838110156120b657808201518184015260208101905061209b565b838111156120c5576000848401525b50505050565b600060028204905060018216806120e357607f821691505b602082108114156120f7576120f66121a6565b5b50919050565b61210682612226565b810181811067ffffffffffffffff82111715612125576121246121d5565b5b80604052505050565b60006121398261207f565b91507fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff82141561216c5761216b612177565b5b600182019050919050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b7f4e487b7100000000000000000000000000000000000000000000000000000000600052602260045260246000fd5b7f4e487b7100000000000000000000000000000000000000000000000000000000600052604160045260246000fd5b600060033d11156122235760046000803e612220600051612237565b90505b90565b6000601f19601f8301169050919050565b60008160e01c9050919050565b7f455243313135353a207472616e7366657220746f206e6f6e204552433131353560008201527f526563656976657220696d706c656d656e746572000000000000000000000000602082015250565b7f455243313135353a204552433131353552656365697665722072656a6563746560008201527f6420746f6b656e73000000000000000000000000000000000000000000000000602082015250565b7f455243313135353a2062616c616e636520717565727920666f7220746865207a60008201527f65726f2061646472657373000000000000000000000000000000000000000000602082015250565b7f455243313135353a2063616c6c6572206973206e6f74206f776e6572206e6f7260008201527f20617070726f7665640000000000000000000000000000000000000000000000602082015250565b7f455243313135353a207472616e7366657220746f20746865207a65726f20616460008201527f6472657373000000000000000000000000000000000000000000000000000000602082015250565b7f455243313135353a207472616e736665722063616c6c6572206973206e6f742060008201527f6f776e6572206e6f7220617070726f7665640000000000000000000000000000602082015250565b7f455243313135353a20696e73756666696369656e742062616c616e636520666f60008201527f72207472616e7366657200000000000000000000000000000000000000000000602082015250565b7f455243313135353a2073657474696e6720617070726f76616c2073746174757360008201527f20666f722073656c660000000000000000000000000000000000000000000000602082015250565b7f455243313135353a206163636f756e747320616e6420696473206c656e67746860008201527f206d69736d617463680000000000000000000000000000000000000000000000602082015250565b7f455243313135353a2069647320616e6420616d6f756e7473206c656e6774682060008201527f6d69736d61746368000000000000000000000000000000000000000000000000602082015250565b600060443d101561256a576125ed565b612572611ebb565b60043d036004823e80513d602482011167ffffffffffffffff8211171561259a5750506125ed565b808201805167ffffffffffffffff8111156125b857505050506125ed565b80602083010160043d0385018111156125d55750505050506125ed565b6125e4826020018501866120fd565b82955050505050505b90565b6125f981612015565b811461260457600080fd5b50565b61261081612027565b811461261b57600080fd5b50565b61262781612033565b811461263257600080fd5b50565b61263e8161207f565b811461264957600080fd5b5056fea2646970667358221220a579b8bc6ac76fac4fe3f2f4f9846f16c36ec426e7057a53459d0d51b7bb342d64736f6c63430008040033',
                                                                 'ERC-1155',
                                                                 'TOKEN1155');

INSERT INTO contract(abi, bytecode, contract_type, name) VALUES ('[{"abi" : "abi"}]', '0xbytecode', 'contractType2', 'contractName2');
INSERT INTO contract(abi, bytecode, contract_type, name) VALUES ('[{"abi" : "abi"}]', '0xbytecode', 'contractType3', 'contractName3');

INSERT INTO app(category, name) VALUES ('WEB GAME', 'GAME1');
INSERT INTO app(category, name) VALUES ('WEB GAME', 'GAME2');
INSERT INTO app(category, name) VALUES ('WEB GAME', 'GAME3');
INSERT INTO app(category, name) VALUES ('WEB GAME', 'GAME4');
INSERT INTO app(category, name) VALUES ('WEB GAME', 'GAME5');

INSERT INTO node( ip_address, node_type, chain_seq) VALUES ('ipaddr1', 'type1', 1);
INSERT INTO node( ip_address, node_type, chain_seq) VALUES ('ipaddr2', 'type1', 2);
INSERT INTO node( ip_address, node_type, chain_seq) VALUES ('ipaddr3', 'type1', 1);
INSERT INTO node( ip_address, node_type, chain_seq) VALUES ('ipaddr4', 'type1', 2);
INSERT INTO node( ip_address, node_type, chain_seq) VALUES ('ipaddr5', 'type1', 1);

-- INSERT INTO contract_deploy(address,  chain_seq, contract_id, app_id, wallet_id) VALUES ('dummy1',  1, 1, 1);
-- INSERT INTO contract_deploy(address,  chain_seq, contract_id, app_id, wallet_id) VALUES ('dummy2',  2, 2, 2);
-- INSERT INTO contract_deploy(address,  chain_seq, contract_id, app_id, wallet_id) VALUES ('dummy4',  2, 3, 2);
-- INSERT INTO contract_deploy(address,  chain_seq, contract_id, app_id, wallet_id) VALUES ('dummy3',  1, 3, 3);


-- INSERT INTO wallet( account_address, private_key) VALUES (?, ?);