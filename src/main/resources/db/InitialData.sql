INSERT INTO chain(chain_id, name, chain_type, rpc_url) VALUES ('31337', 'HARDHAT', 'TEST_CHAIN', 'http://localhost:5432');
INSERT INTO chain(chain_id, name, chain_type, rpc_url) VALUES ('1001', 'BAOBAB', 'MAIN_CHAIN', 'https://api.baobab.klaytn.net:8651');

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
                                                                 'GAME_NFT',
                                                                 'TOKEN1155');


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
      },
      {
        "internalType": "string",
        "name": "name",
        "type": "string"
      },
      {
        "internalType": "string",
        "name": "symbol",
        "type": "string"
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
        "name": "owner",
        "type": "address"
      },
      {
        "indexed": true,
        "internalType": "address",
        "name": "spender",
        "type": "address"
      },
      {
        "indexed": false,
        "internalType": "uint256",
        "name": "value",
        "type": "uint256"
      }
    ],
    "name": "Approval",
    "type": "event"
  },
  {
    "anonymous": false,
    "inputs": [
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
        "name": "value",
        "type": "uint256"
      }
    ],
    "name": "Transfer",
    "type": "event"
  },
  {
    "inputs": [
      {
        "internalType": "address",
        "name": "owner",
        "type": "address"
      },
      {
        "internalType": "address",
        "name": "spender",
        "type": "address"
      }
    ],
    "name": "allowance",
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
        "internalType": "address",
        "name": "spender",
        "type": "address"
      },
      {
        "internalType": "uint256",
        "name": "amount",
        "type": "uint256"
      }
    ],
    "name": "approve",
    "outputs": [
      {
        "internalType": "bool",
        "name": "",
        "type": "bool"
      }
    ],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "address",
        "name": "account",
        "type": "address"
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
    "inputs": [],
    "name": "decimals",
    "outputs": [
      {
        "internalType": "uint8",
        "name": "",
        "type": "uint8"
      }
    ],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "address",
        "name": "spender",
        "type": "address"
      },
      {
        "internalType": "uint256",
        "name": "subtractedValue",
        "type": "uint256"
      }
    ],
    "name": "decreaseAllowance",
    "outputs": [
      {
        "internalType": "bool",
        "name": "",
        "type": "bool"
      }
    ],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [
      {
        "internalType": "address",
        "name": "spender",
        "type": "address"
      },
      {
        "internalType": "uint256",
        "name": "addedValue",
        "type": "uint256"
      }
    ],
    "name": "increaseAllowance",
    "outputs": [
      {
        "internalType": "bool",
        "name": "",
        "type": "bool"
      }
    ],
    "stateMutability": "nonpayable",
    "type": "function"
  },
  {
    "inputs": [],
    "name": "name",
    "outputs": [
      {
        "internalType": "string",
        "name": "",
        "type": "string"
      }
    ],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [],
    "name": "symbol",
    "outputs": [
      {
        "internalType": "string",
        "name": "",
        "type": "string"
      }
    ],
    "stateMutability": "view",
    "type": "function"
  },
  {
    "inputs": [],
    "name": "totalSupply",
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
        "internalType": "address",
        "name": "to",
        "type": "address"
      },
      {
        "internalType": "uint256",
        "name": "amount",
        "type": "uint256"
      }
    ],
    "name": "transfer",
    "outputs": [
      {
        "internalType": "bool",
        "name": "",
        "type": "bool"
      }
    ],
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
        "name": "amount",
        "type": "uint256"
      }
    ],
    "name": "transferFrom",
    "outputs": [
      {
        "internalType": "bool",
        "name": "",
        "type": "bool"
      }
    ],
    "stateMutability": "nonpayable",
    "type": "function"
  }
]', '0x60806040523480156200001157600080fd5b506040516200197c3803806200197c83398181016040528101906200003791906200035c565b81818160039080519060200190620000519291906200020c565b5080600490805190602001906200006a9291906200020c565b5050506200007f84846200008960201b60201c565b5050505062000719565b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415620000fc576040517f08c379a0000000000000000000000000000000000000000000000000000000008152600401620000f39062000432565b60405180910390fd5b62000110600083836200020260201b60201c565b8060026000828254620001249190620004e1565b92505081905550806000808473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008282546200017b9190620004e1565b925050819055508173ffffffffffffffffffffffffffffffffffffffff16600073ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef83604051620001e2919062000454565b60405180910390a3620001fe600083836200020760201b60201c565b5050565b505050565b505050565b8280546200021a90620005b2565b90600052602060002090601f0160209004810192826200023e57600085556200028a565b82601f106200025957805160ff19168380011785556200028a565b828001600101855582156200028a579182015b82811115620002895782518255916020019190600101906200026c565b5b5090506200029991906200029d565b5090565b5b80821115620002b85760008160009055506001016200029e565b5090565b6000620002d3620002cd846200049a565b62000471565b905082815260208101848484011115620002ec57600080fd5b620002f98482856200057c565b509392505050565b6000815190506200031281620006e5565b92915050565b600082601f8301126200032a57600080fd5b81516200033c848260208601620002bc565b91505092915050565b6000815190506200035681620006ff565b92915050565b600080600080608085870312156200037357600080fd5b6000620003838782880162000301565b9450506020620003968782880162000345565b935050604085015167ffffffffffffffff811115620003b457600080fd5b620003c28782880162000318565b925050606085015167ffffffffffffffff811115620003e057600080fd5b620003ee8782880162000318565b91505092959194509250565b600062000409601f83620004d0565b91506200041682620006bc565b602082019050919050565b6200042c8162000572565b82525050565b600060208201905081810360008301526200044d81620003fa565b9050919050565b60006020820190506200046b600083018462000421565b92915050565b60006200047d62000490565b90506200048b8282620005e8565b919050565b6000604051905090565b600067ffffffffffffffff821115620004b857620004b76200067c565b5b620004c382620006ab565b9050602081019050919050565b600082825260208201905092915050565b6000620004ee8262000572565b9150620004fb8362000572565b9250827fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff038211156200053357620005326200061e565b5b828201905092915050565b60006200054b8262000552565b9050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000819050919050565b60005b838110156200059c5780820151818401526020810190506200057f565b83811115620005ac576000848401525b50505050565b60006002820490506001821680620005cb57607f821691505b60208210811415620005e257620005e16200064d565b5b50919050565b620005f382620006ab565b810181811067ffffffffffffffff821117156200061557620006146200067c565b5b80604052505050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b7f4e487b7100000000000000000000000000000000000000000000000000000000600052602260045260246000fd5b7f4e487b7100000000000000000000000000000000000000000000000000000000600052604160045260246000fd5b6000601f19601f8301169050919050565b7f45524332303a206d696e7420746f20746865207a65726f206164647265737300600082015250565b620006f0816200053e565b8114620006fc57600080fd5b50565b6200070a8162000572565b81146200071657600080fd5b50565b61125380620007296000396000f3fe608060405234801561001057600080fd5b50600436106100a95760003560e01c80633950935111610071578063395093511461016857806370a082311461019857806395d89b41146101c8578063a457c2d7146101e6578063a9059cbb14610216578063dd62ed3e14610246576100a9565b806306fdde03146100ae578063095ea7b3146100cc57806318160ddd146100fc57806323b872dd1461011a578063313ce5671461014a575b600080fd5b6100b6610276565b6040516100c39190610d19565b60405180910390f35b6100e660048036038101906100e19190610b67565b610308565b6040516100f39190610cfe565b60405180910390f35b61010461032b565b6040516101119190610e1b565b60405180910390f35b610134600480360381019061012f9190610b18565b610335565b6040516101419190610cfe565b60405180910390f35b610152610364565b60405161015f9190610e36565b60405180910390f35b610182600480360381019061017d9190610b67565b61036d565b60405161018f9190610cfe565b60405180910390f35b6101b260048036038101906101ad9190610ab3565b6103a4565b6040516101bf9190610e1b565b60405180910390f35b6101d06103ec565b6040516101dd9190610d19565b60405180910390f35b61020060048036038101906101fb9190610b67565b61047e565b60405161020d9190610cfe565b60405180910390f35b610230600480360381019061022b9190610b67565b6104f5565b60405161023d9190610cfe565b60405180910390f35b610260600480360381019061025b9190610adc565b610518565b60405161026d9190610e1b565b60405180910390f35b60606003805461028590610f4b565b80601f01602080910402602001604051908101604052809291908181526020018280546102b190610f4b565b80156102fe5780601f106102d3576101008083540402835291602001916102fe565b820191906000526020600020905b8154815290600101906020018083116102e157829003601f168201915b5050505050905090565b60008061031361059f565b90506103208185856105a7565b600191505092915050565b6000600254905090565b60008061034061059f565b905061034d858285610772565b6103588585856107fe565b60019150509392505050565b60006012905090565b60008061037861059f565b905061039981858561038a8589610518565b6103949190610e6d565b6105a7565b600191505092915050565b60008060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020549050919050565b6060600480546103fb90610f4b565b80601f016020809104026020016040519081016040528092919081815260200182805461042790610f4b565b80156104745780601f1061044957610100808354040283529160200191610474565b820191906000526020600020905b81548152906001019060200180831161045757829003601f168201915b5050505050905090565b60008061048961059f565b905060006104978286610518565b9050838110156104dc576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016104d390610dfb565b60405180910390fd5b6104e982868684036105a7565b60019250505092915050565b60008061050061059f565b905061050d8185856107fe565b600191505092915050565b6000600160008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008373ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002054905092915050565b600033905090565b600073ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff161415610617576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161060e90610ddb565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff161415610687576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161067e90610d5b565b60405180910390fd5b80600160008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002060008473ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff168152602001908152602001600020819055508173ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff167f8c5be1e5ebec7d5bd14f71427d1e84f3dd0314c0f7b2291e5b200ac8c7c3b925836040516107659190610e1b565b60405180910390a3505050565b600061077e8484610518565b90507fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff81146107f857818110156107ea576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016107e190610d7b565b60405180910390fd5b6107f784848484036105a7565b5b50505050565b600073ffffffffffffffffffffffffffffffffffffffff168373ffffffffffffffffffffffffffffffffffffffff16141561086e576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161086590610dbb565b60405180910390fd5b600073ffffffffffffffffffffffffffffffffffffffff168273ffffffffffffffffffffffffffffffffffffffff1614156108de576040517f08c379a00000000000000000000000000000000000000000000000000000000081526004016108d590610d3b565b60405180910390fd5b6108e9838383610a7f565b60008060008573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000205490508181101561096f576040517f08c379a000000000000000000000000000000000000000000000000000000000815260040161096690610d9b565b60405180910390fd5b8181036000808673ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff16815260200190815260200160002081905550816000808573ffffffffffffffffffffffffffffffffffffffff1673ffffffffffffffffffffffffffffffffffffffff1681526020019081526020016000206000828254610a029190610e6d565b925050819055508273ffffffffffffffffffffffffffffffffffffffff168473ffffffffffffffffffffffffffffffffffffffff167fddf252ad1be2c89b69c2b068fc378daa952ba7f163c4a11628f55a4df523b3ef84604051610a669190610e1b565b60405180910390a3610a79848484610a84565b50505050565b505050565b505050565b600081359050610a98816111ef565b92915050565b600081359050610aad81611206565b92915050565b600060208284031215610ac557600080fd5b6000610ad384828501610a89565b91505092915050565b60008060408385031215610aef57600080fd5b6000610afd85828601610a89565b9250506020610b0e85828601610a89565b9150509250929050565b600080600060608486031215610b2d57600080fd5b6000610b3b86828701610a89565b9350506020610b4c86828701610a89565b9250506040610b5d86828701610a9e565b9150509250925092565b60008060408385031215610b7a57600080fd5b6000610b8885828601610a89565b9250506020610b9985828601610a9e565b9150509250929050565b610bac81610ed5565b82525050565b6000610bbd82610e51565b610bc78185610e5c565b9350610bd7818560208601610f18565b610be081610fdb565b840191505092915050565b6000610bf8602383610e5c565b9150610c0382610fec565b604082019050919050565b6000610c1b602283610e5c565b9150610c268261103b565b604082019050919050565b6000610c3e601d83610e5c565b9150610c498261108a565b602082019050919050565b6000610c61602683610e5c565b9150610c6c826110b3565b604082019050919050565b6000610c84602583610e5c565b9150610c8f82611102565b604082019050919050565b6000610ca7602483610e5c565b9150610cb282611151565b604082019050919050565b6000610cca602583610e5c565b9150610cd5826111a0565b604082019050919050565b610ce981610f01565b82525050565b610cf881610f0b565b82525050565b6000602082019050610d136000830184610ba3565b92915050565b60006020820190508181036000830152610d338184610bb2565b905092915050565b60006020820190508181036000830152610d5481610beb565b9050919050565b60006020820190508181036000830152610d7481610c0e565b9050919050565b60006020820190508181036000830152610d9481610c31565b9050919050565b60006020820190508181036000830152610db481610c54565b9050919050565b60006020820190508181036000830152610dd481610c77565b9050919050565b60006020820190508181036000830152610df481610c9a565b9050919050565b60006020820190508181036000830152610e1481610cbd565b9050919050565b6000602082019050610e306000830184610ce0565b92915050565b6000602082019050610e4b6000830184610cef565b92915050565b600081519050919050565b600082825260208201905092915050565b6000610e7882610f01565b9150610e8383610f01565b9250827fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff03821115610eb857610eb7610f7d565b5b828201905092915050565b6000610ece82610ee1565b9050919050565b60008115159050919050565b600073ffffffffffffffffffffffffffffffffffffffff82169050919050565b6000819050919050565b600060ff82169050919050565b60005b83811015610f36578082015181840152602081019050610f1b565b83811115610f45576000848401525b50505050565b60006002820490506001821680610f6357607f821691505b60208210811415610f7757610f76610fac565b5b50919050565b7f4e487b7100000000000000000000000000000000000000000000000000000000600052601160045260246000fd5b7f4e487b7100000000000000000000000000000000000000000000000000000000600052602260045260246000fd5b6000601f19601f8301169050919050565b7f45524332303a207472616e7366657220746f20746865207a65726f206164647260008201527f6573730000000000000000000000000000000000000000000000000000000000602082015250565b7f45524332303a20617070726f766520746f20746865207a65726f20616464726560008201527f7373000000000000000000000000000000000000000000000000000000000000602082015250565b7f45524332303a20696e73756666696369656e7420616c6c6f77616e6365000000600082015250565b7f45524332303a207472616e7366657220616d6f756e742065786365656473206260008201527f616c616e63650000000000000000000000000000000000000000000000000000602082015250565b7f45524332303a207472616e736665722066726f6d20746865207a65726f20616460008201527f6472657373000000000000000000000000000000000000000000000000000000602082015250565b7f45524332303a20617070726f76652066726f6d20746865207a65726f2061646460008201527f7265737300000000000000000000000000000000000000000000000000000000602082015250565b7f45524332303a2064656372656173656420616c6c6f77616e63652062656c6f7760008201527f207a65726f000000000000000000000000000000000000000000000000000000602082015250565b6111f881610ec3565b811461120357600080fd5b50565b61120f81610f01565b811461121a57600080fd5b5056fea26469706673582212207c329a7dbbb7c4bfa25f6d3efbb9f04dd16afbb626e10b510eaad864c0a728cc64736f6c63430008040033',
                                                              'GAME_TOKEN', 'ERC20Token');

INSERT INTO contract(abi, bytecode, contract_type, name) VALUES ('
[
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_iskraToken",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "_iskraIncomeWallet",
          "type": "address"
        }
      ],
      "stateMutability": "nonpayable",
      "type": "constructor"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_cardID",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256[]",
          "name": "_tokenIDs",
          "type": "uint256[]"
        },
        {
          "indexed": false,
          "internalType": "uint256[]",
          "name": "_tokenAmounts",
          "type": "uint256[]"
        }
      ],
      "name": "AmountIncreased",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256[]",
          "name": "_cardIDs",
          "type": "uint256[]"
        }
      ],
      "name": "BatchCardCreated",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256[]",
          "name": "_cardIDs",
          "type": "uint256[]"
        }
      ],
      "name": "BatchCardRemoved",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_cardID",
          "type": "uint256"
        }
      ],
      "name": "CardCreated",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_cardID",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256[]",
          "name": "_tokenIDs",
          "type": "uint256[]"
        },
        {
          "indexed": false,
          "internalType": "uint256[]",
          "name": "_tokenAmounts",
          "type": "uint256[]"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "_purchaser",
          "type": "address"
        }
      ],
      "name": "CardPurchased",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_cardID",
          "type": "uint256"
        }
      ],
      "name": "CardRemoved",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "_gameOwner",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_gameRsRatePermille",
          "type": "uint256"
        }
      ],
      "name": "GameContractCreated",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "_newGameOwner",
          "type": "address"
        }
      ],
      "name": "GameOwnerChanged",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_newGameRsRate",
          "type": "uint256"
        }
      ],
      "name": "GameRsRateChanged",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "_previousIskraIncomeWallet",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "_newIskraIncomeWallet",
          "type": "address"
        }
      ],
      "name": "IskraIncomeWalletChanged",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "_previousIskraToken",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "_newIskraToken",
          "type": "address"
        }
      ],
      "name": "IskraTokenChanged",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "address",
          "name": "_previousOwner",
          "type": "address"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "_newOwner",
          "type": "address"
        }
      ],
      "name": "OwnershipTransferred",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_previousPurchaserFeePermille",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_newPurchaserFeePermille",
          "type": "uint256"
        }
      ],
      "name": "PurchaserFeePermilleChanged",
      "type": "event"
    },
    {
      "anonymous": false,
      "inputs": [
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_sellerRevenue",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "uint256",
          "name": "_iskraRevenue",
          "type": "uint256"
        },
        {
          "indexed": false,
          "internalType": "address",
          "name": "_gameContractOwner",
          "type": "address"
        }
      ],
      "name": "RevenueClaimed",
      "type": "event"
    },
    {
      "inputs": [],
      "name": "PERMILLE_FACTOR",
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
      "inputs": [],
      "name": "PURCHASER_FEE_DEFAULT_PERMILLE",
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
      "inputs": [],
      "name": "acceptOwnership",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "internalType": "enum ISKRAMarket.ERCType",
          "name": "_ercType",
          "type": "uint8"
        },
        {
          "internalType": "uint256[]",
          "name": "_cardIDs",
          "type": "uint256[]"
        },
        {
          "internalType": "enum ISKRAMarket.CardType[]",
          "name": "_cardTypes",
          "type": "uint8[]"
        },
        {
          "internalType": "uint256[][]",
          "name": "_tokenIDs",
          "type": "uint256[][]"
        },
        {
          "internalType": "uint256[][]",
          "name": "_tokenAmounts",
          "type": "uint256[][]"
        },
        {
          "internalType": "uint256[]",
          "name": "_prices",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256[]",
          "name": "_startSaleDates",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256[]",
          "name": "_endSaleDates",
          "type": "uint256[]"
        },
        {
          "internalType": "enum ISKRAMarket.PaymentType[]",
          "name": "_paymentTypes",
          "type": "uint8[]"
        }
      ],
      "name": "batchCreateCard",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "internalType": "enum ISKRAMarket.ERCType",
          "name": "_ercType",
          "type": "uint8"
        },
        {
          "internalType": "uint256[]",
          "name": "_cardIDs",
          "type": "uint256[]"
        },
        {
          "internalType": "enum ISKRAMarket.CardType[]",
          "name": "_cardTypes",
          "type": "uint8[]"
        },
        {
          "internalType": "uint256[][]",
          "name": "_tokenIDs",
          "type": "uint256[][]"
        },
        {
          "internalType": "uint256[][]",
          "name": "_tokenAmounts",
          "type": "uint256[][]"
        }
      ],
      "name": "batchRemoveCard",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "_newGameOwner",
          "type": "address"
        }
      ],
      "name": "changeGameOwner",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "_newGameRsRate",
          "type": "uint256"
        }
      ],
      "name": "changeGameRsRate",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_newIskraIncomeWallet",
          "type": "address"
        }
      ],
      "name": "changeIskraIncomeWallet",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_newIskraToken",
          "type": "address"
        }
      ],
      "name": "changeIskraToken",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_newPurchaserFeePermille",
          "type": "uint256"
        }
      ],
      "name": "changePurchaserFeePermille",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        }
      ],
      "name": "claimRevenue",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "internalType": "enum ISKRAMarket.ERCType",
          "name": "_ercType",
          "type": "uint8"
        },
        {
          "internalType": "uint256",
          "name": "_cardID",
          "type": "uint256"
        },
        {
          "internalType": "enum ISKRAMarket.CardType",
          "name": "_cardType",
          "type": "uint8"
        },
        {
          "internalType": "uint256[]",
          "name": "_tokenIDs",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256[]",
          "name": "_tokenAmounts",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256",
          "name": "_price",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "_startSaleDate",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "_endSaleDate",
          "type": "uint256"
        },
        {
          "internalType": "enum ISKRAMarket.PaymentType",
          "name": "_paymentType",
          "type": "uint8"
        }
      ],
      "name": "createCard",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "_gameContract",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "_gameOwner",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "_gameRsRatePermille",
          "type": "uint256"
        }
      ],
      "name": "createGameContract",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "name": "gameContracts",
      "outputs": [
        {
          "internalType": "address payable",
          "name": "owner",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "rsRate",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "revenue",
          "type": "uint256"
        },
        {
          "internalType": "bool",
          "name": "registered",
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
          "name": "_cardID",
          "type": "uint256"
        },
        {
          "internalType": "uint256[]",
          "name": "_tokenIDs",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256[]",
          "name": "_tokenAmounts",
          "type": "uint256[]"
        }
      ],
      "name": "increaseAmount",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "iskraIncomeWallet",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "iskraToken",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
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
      "name": "marketCards",
      "outputs": [
        {
          "internalType": "address",
          "name": "gameContract",
          "type": "address"
        },
        {
          "internalType": "enum ISKRAMarket.ERCType",
          "name": "ercType",
          "type": "uint8"
        },
        {
          "internalType": "enum ISKRAMarket.CardType",
          "name": "cardType",
          "type": "uint8"
        },
        {
          "internalType": "uint256",
          "name": "price",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "startSaleDate",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "endSaleDate",
          "type": "uint256"
        },
        {
          "internalType": "enum ISKRAMarket.PaymentType",
          "name": "paymentType",
          "type": "uint8"
        },
        {
          "internalType": "bool",
          "name": "registered",
          "type": "bool"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "newOwner",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "uint256[]",
          "name": "",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256[]",
          "name": "",
          "type": "uint256[]"
        },
        {
          "internalType": "bytes",
          "name": "",
          "type": "bytes"
        }
      ],
      "name": "onERC1155BatchReceived",
      "outputs": [
        {
          "internalType": "bytes4",
          "name": "",
          "type": "bytes4"
        }
      ],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        },
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        },
        {
          "internalType": "bytes",
          "name": "",
          "type": "bytes"
        }
      ],
      "name": "onERC1155Received",
      "outputs": [
        {
          "internalType": "bytes4",
          "name": "",
          "type": "bytes4"
        }
      ],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        },
        {
          "internalType": "uint256",
          "name": "",
          "type": "uint256"
        },
        {
          "internalType": "bytes",
          "name": "",
          "type": "bytes"
        }
      ],
      "name": "onERC721Received",
      "outputs": [
        {
          "internalType": "bytes4",
          "name": "",
          "type": "bytes4"
        }
      ],
      "stateMutability": "nonpayable",
      "type": "function"
    },
    {
      "inputs": [],
      "name": "owner",
      "outputs": [
        {
          "internalType": "address",
          "name": "",
          "type": "address"
        }
      ],
      "stateMutability": "view",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_cardID",
          "type": "uint256"
        },
        {
          "internalType": "uint256[]",
          "name": "_tokenIDs",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256[]",
          "name": "_tokenAmounts",
          "type": "uint256[]"
        }
      ],
      "name": "purchaseCard",
      "outputs": [],
      "stateMutability": "payable",
      "type": "function"
    },
    {
      "inputs": [
        {
          "internalType": "uint256",
          "name": "_cardID",
          "type": "uint256"
        },
        {
          "internalType": "uint256[]",
          "name": "_tokenIDs",
          "type": "uint256[]"
        },
        {
          "internalType": "uint256[]",
          "name": "_tokenAmounts",
          "type": "uint256[]"
        }
      ],
      "name": "removeCard",
      "outputs": [],
      "stateMutability": "payable",
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
          "internalType": "address",
          "name": "_newOwner",
          "type": "address"
        }
      ],
      "name": "transferOwnership",
      "outputs": [],
      "stateMutability": "nonpayable",
      "type": "function"
    }
]',
'0x60806040523480156200001157600080fd5b50604051620046ef380380620046ef83398101604081905262000034916200016e565b6001600081905580546001600160a01b031990811633179091556002805490911690556001600160a01b038216620000b35760405162461bcd60e51b815260206004820152601e60248201527f412069736b726120746f6b656e2061646472657373206973207a65726f2e000060448201526064015b60405180910390fd5b6001600160a01b0381166200011a5760405162461bcd60e51b815260206004820152602660248201527f412069736b726120696e636f6d652077616c6c65742061646472657373206973604482015265103d32b9379760d11b6064820152608401620000aa565b600380546001600160a01b039384166001600160a01b031991821617909155600480549290931691161790556019600755620001a6565b80516001600160a01b03811681146200016957600080fd5b919050565b600080604083850312156200018257600080fd5b6200018d8362000151565b91506200019d6020840162000151565b90509250929050565b61453980620001b66000396000f3fe60806040526004361061019c5760003560e01c806372157356116100ec578063bd9ecf7b1161008a578063dd20105911610064578063dd20105914610536578063f23a6e6114610556578063f2fde38b14610582578063fa152045146105a257600080fd5b8063bd9ecf7b146104f0578063d4ee1d9014610503578063db4f52441461052357600080fd5b806393b60b75116100c657806393b60b751461048b578063b69569421461049e578063b8876a51146104b1578063bc197c81146104c457600080fd5b8063721573561461043657806379ba5097146104565780638da5cb5b1461046b57600080fd5b806342e01001116101595780635ce02b8d116101335780635ce02b8d146103005780635ff37bd2146103135780636a6dda4d1461039b5780636ddd474d146103bb57600080fd5b806342e01001146102ad578063464f192d146102cd57806352bd268f146102ed57600080fd5b806301ffc9a7146101a1578063096ca630146101d6578063150b7a021461020e5780631548fd9e146102525780631cc014f014610276578063322593511461028b575b600080fd5b3480156101ad57600080fd5b506101c16101bc3660046135c3565b6105c2565b60405190151581526020015b60405180910390f35b3480156101e257600080fd5b506004546101f6906001600160a01b031681565b6040516001600160a01b0390911681526020016101cd565b34801561021a57600080fd5b506102396102293660046136c0565b630a85bd0160e11b949350505050565b6040516001600160e01b031990911681526020016101cd565b34801561025e57600080fd5b506102686103e881565b6040519081526020016101cd565b34801561028257600080fd5b50610268601981565b34801561029757600080fd5b506102ab6102a6366004613728565b6105f9565b005b3480156102b957600080fd5b506102ab6102c8366004613764565b610824565b3480156102d957600080fd5b506102ab6102e836600461378e565b610945565b6102ab6102fb366004613877565b610a62565b6102ab61030e366004613a28565b61111c565b34801561031f57600080fd5b5061038761032e366004613af5565b6006602081905260009182526040909120805460038201546004830154600584015493909401546001600160a01b0383169460ff600160a01b8504811695600160a81b9095048116949192808216916101009091041688565b6040516101cd989796959493929190613b34565b3480156103a757600080fd5b506102ab6103b6366004613ba0565b61172e565b3480156103c757600080fd5b5061040a6103d6366004613ba0565b60056020526000908152604090208054600182015460028301546003909301546001600160a01b0390921692909160ff1684565b604080516001600160a01b039095168552602085019390935291830152151560608201526080016101cd565b34801561044257600080fd5b506003546101f6906001600160a01b031681565b34801561046257600080fd5b506102ab611804565b34801561047757600080fd5b506001546101f6906001600160a01b031681565b6102ab610499366004613c1f565b61188d565b6102ab6104ac366004613ba0565b61215a565b6102ab6104bf366004613d82565b612444565b3480156104d057600080fd5b506102396104df366004613def565b63bc197c8160e01b95945050505050565b6102ab6104fe366004613d82565b6127a4565b34801561050f57600080fd5b506002546101f6906001600160a01b031681565b6102ab610531366004613d82565b612bf4565b34801561054257600080fd5b506102ab610551366004613af5565b61331e565b34801561056257600080fd5b50610239610571366004613e99565b63f23a6e6160e01b95945050505050565b34801561058e57600080fd5b506102ab61059d366004613ba0565b6133e4565b3480156105ae57600080fd5b506102ab6105bd366004613ba0565b613430565b60006001600160e01b03198216630271189760e51b14806105f357506301ffc9a760e01b6001600160e01b03198316145b92915050565b6001546001600160a01b0316331461061057600080fd5b6001600160a01b0383166106765760405162461bcd60e51b815260206004820152602260248201527f5468652067616d6520636f6e74726163742061646472657373206973207a6572604482015261379760f11b60648201526084015b60405180910390fd5b6001600160a01b0382166106cc5760405162461bcd60e51b815260206004820152601f60248201527f5468652067616d65206f776e65722061646472657373206973207a65726f2e00604482015260640161066d565b80158015906106dd57506103e88111155b6106f95760405162461bcd60e51b815260040161066d90613efe565b6001600160a01b03831660009081526005602052604090206003015460ff161561076f5760405162461bcd60e51b815260206004820152602160248201527f5468652067616d6520636f6e747261637420616c7265616479206578697374736044820152601760f91b606482015260840161066d565b604080516080810182526001600160a01b038481168252602080830185815260008486018181526001606087018181528b87168452600590955291879020955186546001600160a01b031916951694909417855590519084015590516002830155516003909101805460ff1916911515919091179055517f567a4c8c74a3005b40eefe41c1187288437407b6cac91d3db0e8a203e18229df9061081790859085908590613f46565b60405180910390a1505050565b6001546001600160a01b0316331461083b57600080fd5b6001600160a01b03821660009081526005602052604090206003015460ff1615156001146108c75760405162461bcd60e51b815260206004820152603360248201527f5468652067616d6520636f6e747261637420646f6573206e6f7420657869742060448201527234b7103a34329036b0b935b2ba383630b1b29760691b606482015260840161066d565b6103e88111156108e95760405162461bcd60e51b815260040161066d90613efe565b6001600160a01b038216600081815260056020908152604091829020600101849055815192835282018390527f92888d8b52de71d7d3e301fe6909d34c61a219c83d34dc9321390c0c937b498c91015b60405180910390a15050565b6001546001600160a01b0316331461095c57600080fd5b6001600160a01b03821660009081526005602052604090206003015460ff16151560011461099c5760405162461bcd60e51b815260040161066d90613f6a565b6001600160a01b0381166109fe5760405162461bcd60e51b815260206004820152602360248201527f546865206e65772067616d65206f776e65722061646472657373206973207a6560448201526239379760e91b606482015260840161066d565b6001600160a01b0382811660008181526005602090815260409182902080546001600160a01b031916948616948517905581519283528201929092527f253f61e57aebb888daec979db2f90b4a6c43b2b54803d78d68af49ccfc76fed49101610939565b60026000541415610a855760405162461bcd60e51b815260040161066d90613fbe565b600260009081556001600160a01b038b168152600560205260409020600301548a9060ff161515600114610acb5760405162461bcd60e51b815260040161066d90613f6a565b6001600160a01b03818116600090815260056020526040902054163314610b045760405162461bcd60e51b815260040161066d90613ff5565b60008981526006602081905260409091200154610100900460ff1615610b3c5760405162461bcd60e51b815260040161066d9061403b565b60008a6001811115610b5057610b50613b0e565b1480610b6d575060018a6001811115610b6b57610b6b613b0e565b145b610b895760405162461bcd60e51b815260040161066d90614089565b6000886002811115610b9d57610b9d613b0e565b1480610bba57506001886002811115610bb857610bb8613b0e565b145b80610bd657506002886002811115610bd457610bd4613b0e565b145b610c3e5760405162461bcd60e51b815260206004820152603360248201527f436172642054797065206d757374206265206f6e6520616d6f6e67204e46542c6044820152721029a2a6a4afa7232a16102820a1a5a0a3a29760691b606482015260840161066d565b60008511610c835760405162461bcd60e51b8152602060048201526012602482015271383934b1b29034b9903932b8bab4b932b21760711b604482015260640161066d565b821580610c8f57508284105b610cab5760405162461bcd60e51b815260040161066d906140d6565b6000826001811115610cbf57610cbf613b0e565b1480610cdc57506001826001811115610cda57610cda613b0e565b145b610d4e5760405162461bcd60e51b815260206004820152603760248201527f5061796d656e742054797065206d757374206265206f6e6520616d6f6e67204960448201527f534b52415f544f4b454e2c2047414d455f544f4b454e2e000000000000000000606482015260840161066d565b6040518061014001604052808c6001600160a01b031681526020018b6001811115610d7b57610d7b613b0e565b8152602001896002811115610d9257610d92613b0e565b8152602001888152602001878152602001868152602001858152602001848152602001836001811115610dc757610dc7613b0e565b81526001602091820181905260008c81526006835260409020835181546001600160a01b031981166001600160a01b039092169182178355938501519193919284926001600160a81b03191690911790600160a01b908490811115610e2e57610e2e613b0e565b021790555060408201518154829060ff60a81b1916600160a81b836002811115610e5a57610e5a613b0e565b021790555060608201518051610e7a916001840191602090910190613542565b5060808201518051610e96916002840191602090910190613542565b5060a0820151600382015560c0820151600482015560e0820151600582015561010082015160068201805460ff191660018381811115610ed857610ed8613b0e565b02179055506101209190910151600690910180549115156101000261ff001990921691909117905560008a6001811115610f1457610f14613b0e565b1415610fba5760005b8751811015610fb4578b6001600160a01b03166342842e0e33308b8581518110610f4957610f49614120565b60200260200101516040518463ffffffff1660e01b8152600401610f6f93929190613f46565b600060405180830381600087803b158015610f8957600080fd5b505af1158015610f9d573d6000803e3d6000fd5b505050508080610fac9061414c565b915050610f1d565b506110d6565b6002886002811115610fce57610fce613b0e565b141561103d57604051631759616b60e11b81526001600160a01b038c1690632eb2c2d69061100690339030908c908c906004016141a2565b600060405180830381600087803b15801561102057600080fd5b505af1158015611034573d6000803e3d6000fd5b505050506110d6565b8a6001600160a01b031663f242432a33308a60008151811061106157611061614120565b60200260200101518a60008151811061107c5761107c614120565b60200260200101516040518563ffffffff1660e01b81526004016110a394939291906141fd565b600060405180830381600087803b1580156110bd57600080fd5b505af11580156110d1573d6000803e3d6000fd5b505050505b6040518981527f39789d91fcbc800fc359c6476eb2ce4977615b30168172087e7581c85b5ff5f2906020015b60405180910390a150506001600055505050505050505050565b6002600054141561113f5760405162461bcd60e51b815260040161066d90613fbe565b6002600090815584905b8151811015611239576006600083838151811061116857611168614120565b6020026020010151815260200190815260200160002060060160019054906101000a900460ff16151560011515146111b25760405162461bcd60e51b815260040161066d90614235565b60056000600660008585815181106111cc576111cc614120565b60209081029190910181015182528181019290925260409081016000908120546001600160a01b0390811685529284019490945291909101909120541633146112275760405162461bcd60e51b815260040161066d90614285565b806112318161414c565b915050611149565b50600086600181111561124e5761124e613b0e565b148061126b5750600186600181111561126957611269613b0e565b145b6112875760405162461bcd60e51b815260040161066d90614089565b60005b85518110156113595760008582815181106112a7576112a7614120565b602002602001015160028111156112c0576112c0613b0e565b14806112f6575060018582815181106112db576112db614120565b602002602001015160028111156112f4576112f4613b0e565b145b8061132b5750600285828151811061131057611310614120565b6020026020010151600281111561132957611329613b0e565b145b6113475760405162461bcd60e51b815260040161066d906142cb565b806113518161414c565b91505061128a565b50600086600181111561136e5761136e613b0e565b14156114ca5760005b83518110156114c4576006600087838151811061139657611396614120565b6020026020010151815260200190815260200160002060000160009054906101000a90046001600160a01b03166001600160a01b03166342842e0e3060056000600660008c88815181106113ec576113ec614120565b60209081029190910181015182528181019290925260409081016000908120546001600160a01b039081168552928401949094529190910190912054885191169088908690811061143f5761143f614120565b602002602001015160008151811061145957611459614120565b60200260200101516040518463ffffffff1660e01b815260040161147f93929190613f46565b600060405180830381600087803b15801561149957600080fd5b505af11580156114ad573d6000803e3d6000fd5b5050505080806114bc9061414c565b915050611377565b5061164c565b6060806000805b88518110156115d15760005b8782815181106114ef576114ef614120565b6020026020010151518110156115be5787828151811061151157611511614120565b6020026020010151818151811061152a5761152a614120565b602002602001015185848151811061154457611544614120565b60200260200101818152505086828151811061156257611562614120565b6020026020010151818151811061157b5761157b614120565b602002602001015184848061158f9061414c565b9550815181106115a1576115a1614120565b6020908102919091010152806115b68161414c565b9150506114dd565b50806115c98161414c565b9150506114d1565b506001600160a01b03808b1660008181526005602052604090819020549051631759616b60e11b81529192632eb2c2d6926116169230921690889088906004016141a2565b600060405180830381600087803b15801561163057600080fd5b505af1158015611644573d6000803e3d6000fd5b505050505050505b60005b85518110156116e8576006600087838151811061166e5761166e614120565b6020908102919091018101518252810191909152604001600090812080546001600160b01b0319168155906116a6600183018261358d565b6116b460028301600061358d565b50600060038201819055600482018190556005820155600601805461ffff19169055806116e08161414c565b91505061164f565b507fd16aa69934739dc16663bc995c3560bb6bd12a68b106a528c97f694e43202e9a85604051611718919061431d565b60405180910390a1505060016000555050505050565b6001546001600160a01b0316331461174557600080fd5b6001600160a01b03811661179b5760405162461bcd60e51b815260206004820181905260248201527f4e65772069736b726120746f6b656e2061646472657373206973207a65726f2e604482015260640161066d565b600354604080516001600160a01b03928316815291831660208301527ffcb16566dbf42f5e5c000e220dd4cacd946398624182c690390e1ecc949a083a910160405180910390a1600380546001600160a01b0319166001600160a01b0392909216919091179055565b6002546001600160a01b0316331461181b57600080fd5b600154600254604080516001600160a01b0393841681529290911660208301527f8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0910160405180910390a160028054600180546001600160a01b03199081166001600160a01b03841617909155169055565b600260005414156118b05760405162461bcd60e51b815260040161066d90613fbe565b600260009081556001600160a01b038b168152600560205260409020600301548a9060ff1615156001146118f65760405162461bcd60e51b815260040161066d90613f6a565b6001600160a01b0381811660009081526005602052604090205416331461192f5760405162461bcd60e51b815260040161066d90613ff5565b60008a600181111561194357611943613b0e565b1480611960575060018a600181111561195e5761195e613b0e565b145b61197c5760405162461bcd60e51b815260040161066d90614089565b60005b8951811015611c4857600660008b838151811061199e5761199e614120565b602090810291909101810151825281019190915260400160002060060154610100900460ff16156119e15760405162461bcd60e51b815260040161066d9061403b565b60008982815181106119f5576119f5614120565b60200260200101516002811115611a0e57611a0e613b0e565b1480611a4457506001898281518110611a2957611a29614120565b60200260200101516002811115611a4257611a42613b0e565b145b80611a7957506002898281518110611a5e57611a5e614120565b60200260200101516002811115611a7757611a77613b0e565b145b611a955760405162461bcd60e51b815260040161066d906142cb565b6000868281518110611aa957611aa9614120565b602002602001015111611af35760405162461bcd60e51b8152602060048201526012602482015271383934b1b29034b9903932b8bab4b932b21760711b604482015260640161066d565b838181518110611b0557611b05614120565b602002602001015160001480611b4c5750838181518110611b2857611b28614120565b6020026020010151858281518110611b4257611b42614120565b6020026020010151105b611b685760405162461bcd60e51b815260040161066d906140d6565b6000838281518110611b7c57611b7c614120565b60200260200101516001811115611b9557611b95613b0e565b1480611bcb57506001838281518110611bb057611bb0614120565b60200260200101516001811115611bc957611bc9613b0e565b145b611c365760405162461bcd60e51b815260206004820152603660248201527f5061796d656e742054797065206d757374206265206f6e6520616d6f6e67204960448201527529a5a920afaa27a5a2a7161023a0a6a2afaa27a5a2a760511b606482015260840161066d565b80611c408161414c565b91505061197f565b5060005b8951811015611ee6576040518061014001604052808d6001600160a01b031681526020018c6001811115611c8257611c82613b0e565b81526020018a8381518110611c9957611c99614120565b60200260200101516002811115611cb257611cb2613b0e565b8152602001898381518110611cc957611cc9614120565b60200260200101518152602001888381518110611ce857611ce8614120565b60200260200101518152602001878381518110611d0757611d07614120565b60200260200101518152602001868381518110611d2657611d26614120565b60200260200101518152602001858381518110611d4557611d45614120565b60200260200101518152602001848381518110611d6457611d64614120565b60200260200101516001811115611d7d57611d7d613b0e565b815260200160011515815250600660008c8481518110611d9f57611d9f614120565b602090810291909101810151825281810192909252604001600020825181546001600160a01b039091166001600160a01b031982168117835592840151919283916001600160a81b03191617600160a01b836001811115611e0257611e02613b0e565b021790555060408201518154829060ff60a81b1916600160a81b836002811115611e2e57611e2e613b0e565b021790555060608201518051611e4e916001840191602090910190613542565b5060808201518051611e6a916002840191602090910190613542565b5060a0820151600382015560c0820151600482015560e0820151600582015561010082015160068201805460ff191660018381811115611eac57611eac613b0e565b02179055506101209190910151600690910180549115156101000261ff001990921691909117905580611ede8161414c565b915050611c4c565b5060008a6001811115611efb57611efb613b0e565b1415611fbb5760005b8751811015611fb5578b6001600160a01b03166342842e0e33308b8581518110611f3057611f30614120565b6020026020010151600081518110611f4a57611f4a614120565b60200260200101516040518463ffffffff1660e01b8152600401611f7093929190613f46565b600060405180830381600087803b158015611f8a57600080fd5b505af1158015611f9e573d6000803e3d6000fd5b505050508080611fad9061414c565b915050611f04565b5061212b565b6060806000805b8c518110156120c25760005b8b8281518110611fe057611fe0614120565b6020026020010151518110156120af578b828151811061200257612002614120565b6020026020010151818151811061201b5761201b614120565b602002602001015185848151811061203557612035614120565b6020026020010181815250508a828151811061205357612053614120565b6020026020010151818151811061206c5761206c614120565b60200260200101518484806120809061414c565b95508151811061209257612092614120565b6020908102919091010152806120a78161414c565b915050611fce565b50806120ba8161414c565b915050611fc2565b50604051631759616b60e11b81526001600160a01b038f1690632eb2c2d6906120f59033903090889088906004016141a2565b600060405180830381600087803b15801561210f57600080fd5b505af1158015612123573d6000803e3d6000fd5b505050505050505b7f1953ac0909b04753e1ddf53d61bb61d701a5da32492d0837cdff98bac5d5e71389604051611102919061431d565b6002600054141561217d5760405162461bcd60e51b815260040161066d90613fbe565b600260009081556001600160a01b038216815260056020526040902060030154819060ff1615156001146121c35760405162461bcd60e51b815260040161066d90613f6a565b6001546001600160a01b03163314806121f557506001600160a01b038181166000908152600560205260409020541633145b6122415760405162461bcd60e51b815260206004820181905260248201527f6d73672e73656e646572206973206e6f742061626c6520746f20636c61696d2e604482015260640161066d565b6001600160a01b038216600090815260056020526040812060028101546001909101549091906122759083906103e8613506565b905060006122838284614330565b6001600160a01b0386166000908152600560205260408120600201805492935085929091906122b3908490614330565b90915550506003546001600160a01b03868116600090815260056020526040908190205490516323b872dd60e01b8152928216926323b872dd926123009230929116908790600401613f46565b602060405180830381600087803b15801561231a57600080fd5b505af115801561232e573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906123529190614347565b50600354600480546040516323b872dd60e01b81526001600160a01b03938416936323b872dd9361238a933093921691879101613f46565b602060405180830381600087803b1580156123a457600080fd5b505af11580156123b8573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906123dc9190614347565b506001600160a01b0385811660009081526005602090815260409182902054825186815291820185905290921682820152517f9f037742bf8c6dfe0726ba8fe20c1e7e83675e573d5e63c8b6152b631d5630849181900360600190a150506001600055505050565b600260005414156124675760405162461bcd60e51b815260040161066d90613fbe565b600260009081558381526006602081905260409091200154839060ff6101009091041615156001146124ab5760405162461bcd60e51b815260040161066d90614235565b6000818152600660209081526040808320546001600160a01b0390811684526005909252909120541633146124f25760405162461bcd60e51b815260040161066d90614285565b60008085815260066020526040902054600160a01b900460ff16600181111561251d5761251d613b0e565b14156125c9576000848152600660209081526040808320546001600160a01b03908116808552600590935290832054865192936342842e0e933093929092169188919061256c5761256c614120565b60200260200101516040518463ffffffff1660e01b815260040161259293929190613f46565b600060405180830381600087803b1580156125ac57600080fd5b505af11580156125c0573d6000803e3d6000fd5b5050505061270b565b6002600085815260066020526040902054600160a81b900460ff1660028111156125f5576125f5613b0e565b141561264d576000848152600660209081526040808320546001600160a01b03908116808552600590935292819020549051631759616b60e11b81529192632eb2c2d6926125929230921690889088906004016141a2565b6000848152600660209081526040808320546001600160a01b039081168085526005909352908320548651929363f242432a933093929092169188919061269657612696614120565b6020026020010151866000815181106126b1576126b1614120565b60200260200101516040518563ffffffff1660e01b81526004016126d894939291906141fd565b600060405180830381600087803b1580156126f257600080fd5b505af1158015612706573d6000803e3d6000fd5b505050505b600084815260066020526040812080546001600160b01b031916815590612735600183018261358d565b61274360028301600061358d565b50600060038201819055600482018190556005820155600601805461ffff191690556040518481527fbf4f829c37dd6ba45e22f6c010e33b73757cdaf2298c467a74269e4b1a6b11cd906020015b60405180910390a1505060016000555050565b600260005414156127c75760405162461bcd60e51b815260040161066d90613fbe565b600260009081558381526006602081905260409091200154839060ff61010090910416151560011461280b5760405162461bcd60e51b815260040161066d90614235565b6000818152600660209081526040808320546001600160a01b0390811684526005909252909120541633146128525760405162461bcd60e51b815260040161066d90614285565b8251600085815260066020526040902060010154146128835760405162461bcd60e51b815260040161066d90614369565b60005b8351811015612982578381815181106128a1576128a1614120565b60200260200101516006600087815260200190815260200160002060010182815481106128d0576128d0614120565b9060005260206000200154146128f85760405162461bcd60e51b815260040161066d906143c6565b82818151811061290a5761290a614120565b6020026020010151600014156129705760405162461bcd60e51b815260206004820152602560248201527f54686520696e6372656173696e6720746f6b656e20416d6f756e7473206973206044820152643d32b9379760d91b606482015260840161066d565b8061297a8161414c565b915050612886565b5060008085815260066020526040902054600160a01b900460ff1660018111156129ae576129ae613b0e565b1415612a6a5760005b8351811015612a645760008581526006602052604090205484516001600160a01b03909116906342842e0e90339030908890869081106129f9576129f9614120565b60200260200101516040518463ffffffff1660e01b8152600401612a1f93929190613f46565b600060405180830381600087803b158015612a3957600080fd5b505af1158015612a4d573d6000803e3d6000fd5b505050508080612a5c9061414c565b9150506129b7565b50612bc1565b6002600085815260066020526040902054600160a81b900460ff166002811115612a9657612a96613b0e565b1415612b165760008481526006602052604090819020549051631759616b60e11b81526001600160a01b0390911690632eb2c2d690612adf9033903090889088906004016141a2565b600060405180830381600087803b158015612af957600080fd5b505af1158015612b0d573d6000803e3d6000fd5b50505050612bc1565b60008481526006602052604081205484516001600160a01b039091169163f242432a9133913091889190612b4c57612b4c614120565b602002602001015186600081518110612b6757612b67614120565b60200260200101516040518563ffffffff1660e01b8152600401612b8e94939291906141fd565b600060405180830381600087803b158015612ba857600080fd5b505af1158015612bbc573d6000803e3d6000fd5b505050505b7fa6dce577540d79e003800ab44df225b94a436624ee7d746da941208bc9e9561f84848460405161279193929190614430565b60026000541415612c175760405162461bcd60e51b815260040161066d90613fbe565b60026000908155838152600660205260409020600301543414612ca25760405162461bcd60e51b815260206004820152603760248201527f506c65617365207375626d6974207468652061736b696e67207072696365207460448201527f6f20636f6d706c65746520746865207075726368617365000000000000000000606482015260840161066d565b6000838152600660205260409020600401541580612cd157506000838152600660205260409020600401544210155b612d275760405162461bcd60e51b815260206004820152602160248201527f4974206973206265666f72652074686520706572696f6420666f722073616c656044820152601760f91b606482015260840161066d565b6000838152600660205260409020600501541580612d5657506000838152600660205260409020600501544211155b612da25760405162461bcd60e51b815260206004820152601f60248201527f54686520706572696f6420666f722073616c6520697320657870697265642e00604482015260640161066d565b815160008481526006602052604090206001015414612dd35760405162461bcd60e51b815260040161066d90614369565b60005b8251811015612f2557828181518110612df157612df1614120565b6020026020010151600660008681526020019081526020016000206001018281548110612e2057612e20614120565b906000526020600020015414612e485760405162461bcd60e51b815260040161066d906143c6565b818181518110612e5a57612e5a614120565b6020026020010151600660008681526020019081526020016000206002018281548110612e8957612e89614120565b90600052602060002001541015612f135760405162461bcd60e51b815260206004820152604260248201527f5468652061736b696e6720746f6b656e20416d6f756e7473206d75737420626560448201527f2073616d652061732074686f736520696e20746865206d61726b6574706c6163606482015261329760f11b608482015260a40161066d565b80612f1d8161414c565b915050612dd6565b5060008084815260066020526040902054600160a01b900460ff166001811115612f5157612f51613b0e565b141561300d5760005b82518110156130075760008481526006602052604090205483516001600160a01b03909116906342842e0e9030903390879086908110612f9c57612f9c614120565b60200260200101516040518463ffffffff1660e01b8152600401612fc293929190613f46565b600060405180830381600087803b158015612fdc57600080fd5b505af1158015612ff0573d6000803e3d6000fd5b505050508080612fff9061414c565b915050612f5a565b50613164565b6002600084815260066020526040902054600160a81b900460ff16600281111561303957613039613b0e565b14156130b95760008381526006602052604090819020549051631759616b60e11b81526001600160a01b0390911690632eb2c2d6906130829030903390879087906004016141a2565b600060405180830381600087803b15801561309c57600080fd5b505af11580156130b0573d6000803e3d6000fd5b50505050613164565b60008381526006602052604081205483516001600160a01b039091169163f242432a91309133918791906130ef576130ef614120565b60200260200101518560008151811061310a5761310a614120565b60200260200101516040518563ffffffff1660e01b815260040161313194939291906141fd565b600060405180830381600087803b15801561314b57600080fd5b505af115801561315f573d6000803e3d6000fd5b505050505b60008381526006602052604081206003015460075461318691906103e8613506565b600354600480546040516323b872dd60e01b81529394506001600160a01b03928316936323b872dd936131c193339390911691879101613f46565b602060405180830381600087803b1580156131db57600080fd5b505af11580156131ef573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906132139190614347565b506003546001600160a01b03166323b872dd33306132318534614330565b6040518463ffffffff1660e01b815260040161324f93929190613f46565b602060405180830381600087803b15801561326957600080fd5b505af115801561327d573d6000803e3d6000fd5b505050506040513d601f19601f820116820180604052508101906132a19190614347565b506132ac8134614330565b6000858152600660209081526040808320546001600160a01b031683526005909152812060020180549091906132e3908490614465565b90915550506040517ff710a346188caee6f864a3000def5f43dd2f15ce0a0f3bd052253b109181153d9061279190869086908690339061447d565b6001546001600160a01b0316331461333557600080fd5b801580159061334657506103e88111155b6133a35760405162461bcd60e51b815260206004820152602860248201527f54686520707572636861736520666565206d757374206265206c65737320746860448201526730b710189818181760c11b606482015260840161066d565b60075460408051918252602082018390527f0ebad1d105ef1499ecf5efcc5bb2bf161821b15f3552c31f398c7cf87b996c74910160405180910390a1600755565b6001546001600160a01b031633146133fb57600080fd5b6001600160a01b03811661340e57600080fd5b600280546001600160a01b0319166001600160a01b0392909216919091179055565b6001546001600160a01b0316331461344757600080fd5b6001600160a01b03811661349d5760405162461bcd60e51b815260206004820181905260248201527f4e65772069736b726120746f6b656e2061646472657373206973207a65726f2e604482015260640161066d565b600454604080516001600160a01b03928316815291831660208301527f4301406fa5b2f375fe4bbeeb28b051e024c5098bb5159ac5cf82ba511bafb4bd910160405180910390a1600480546001600160a01b0319166001600160a01b0392909216919091179055565b600061351b6135158585613523565b83613536565b949350505050565b600061352f82846144c2565b9392505050565b600061352f82846144e1565b82805482825590600052602060002090810192821561357d579160200282015b8281111561357d578251825591602001919060010190613562565b506135899291506135ae565b5090565b50805460008255906000526020600020908101906135ab91906135ae565b50565b5b8082111561358957600081556001016135af565b6000602082840312156135d557600080fd5b81356001600160e01b03198116811461352f57600080fd5b80356001600160a01b038116811461360457600080fd5b919050565b634e487b7160e01b600052604160045260246000fd5b604051601f8201601f1916810167ffffffffffffffff8111828210171561364857613648613609565b604052919050565b600082601f83011261366157600080fd5b813567ffffffffffffffff81111561367b5761367b613609565b61368e601f8201601f191660200161361f565b8181528460208386010111156136a357600080fd5b816020850160208301376000918101602001919091529392505050565b600080600080608085870312156136d657600080fd5b6136df856135ed565b93506136ed602086016135ed565b925060408501359150606085013567ffffffffffffffff81111561371057600080fd5b61371c87828801613650565b91505092959194509250565b60008060006060848603121561373d57600080fd5b613746846135ed565b9250613754602085016135ed565b9150604084013590509250925092565b6000806040838503121561377757600080fd5b613780836135ed565b946020939093013593505050565b600080604083850312156137a157600080fd5b6137aa836135ed565b91506137b8602084016135ed565b90509250929050565b600281106135ab57600080fd5b8035613604816137c1565b80356003811061360457600080fd5b600067ffffffffffffffff82111561380257613802613609565b5060051b60200190565b600082601f83011261381d57600080fd5b8135602061383261382d836137e8565b61361f565b82815260059290921b8401810191818101908684111561385157600080fd5b8286015b8481101561386c5780358352918301918301613855565b509695505050505050565b6000806000806000806000806000806101408b8d03121561389757600080fd5b6138a08b6135ed565b99506138ae60208c016137ce565b985060408b013597506138c360608c016137d9565b965060808b013567ffffffffffffffff808211156138e057600080fd5b6138ec8e838f0161380c565b975060a08d013591508082111561390257600080fd5b5061390f8d828e0161380c565b95505060c08b0135935060e08b013592506101008b013591506139356101208c016137ce565b90509295989b9194979a5092959850565b600082601f83011261395757600080fd5b8135602061396761382d836137e8565b82815260059290921b8401810191818101908684111561398657600080fd5b8286015b8481101561386c5761399b816137d9565b835291830191830161398a565b600082601f8301126139b957600080fd5b813560206139c961382d836137e8565b82815260059290921b840181019181810190868411156139e857600080fd5b8286015b8481101561386c57803567ffffffffffffffff811115613a0c5760008081fd5b613a1a8986838b010161380c565b8452509183019183016139ec565b60008060008060008060c08789031215613a4157600080fd5b613a4a876135ed565b9550613a58602088016137ce565b9450604087013567ffffffffffffffff80821115613a7557600080fd5b613a818a838b0161380c565b95506060890135915080821115613a9757600080fd5b613aa38a838b01613946565b94506080890135915080821115613ab957600080fd5b613ac58a838b016139a8565b935060a0890135915080821115613adb57600080fd5b50613ae889828a016139a8565b9150509295509295509295565b600060208284031215613b0757600080fd5b5035919050565b634e487b7160e01b600052602160045260246000fd5b600281106135ab576135ab613b0e565b6001600160a01b03891681526101008101613b4e89613b24565b88602083015260038810613b6457613b64613b0e565b8760408301528660608301528560808301528460a0830152613b8584613b24565b8360c083015282151560e08301529998505050505050505050565b600060208284031215613bb257600080fd5b61352f826135ed565b600082601f830112613bcc57600080fd5b81356020613bdc61382d836137e8565b82815260059290921b84018101918181019086841115613bfb57600080fd5b8286015b8481101561386c578035613c12816137c1565b8352918301918301613bff565b6000806000806000806000806000806101408b8d031215613c3f57600080fd5b613c488b6135ed565b9950613c5660208c016137ce565b985060408b013567ffffffffffffffff80821115613c7357600080fd5b613c7f8e838f0161380c565b995060608d0135915080821115613c9557600080fd5b613ca18e838f01613946565b985060808d0135915080821115613cb757600080fd5b613cc38e838f016139a8565b975060a08d0135915080821115613cd957600080fd5b613ce58e838f016139a8565b965060c08d0135915080821115613cfb57600080fd5b613d078e838f0161380c565b955060e08d0135915080821115613d1d57600080fd5b613d298e838f0161380c565b94506101008d0135915080821115613d4057600080fd5b613d4c8e838f0161380c565b93506101208d0135915080821115613d6357600080fd5b50613d708d828e01613bbb565b9150509295989b9194979a5092959850565b600080600060608486031215613d9757600080fd5b83359250602084013567ffffffffffffffff80821115613db657600080fd5b613dc28783880161380c565b93506040860135915080821115613dd857600080fd5b50613de58682870161380c565b9150509250925092565b600080600080600060a08688031215613e0757600080fd5b613e10866135ed565b9450613e1e602087016135ed565b9350604086013567ffffffffffffffff80821115613e3b57600080fd5b613e4789838a0161380c565b94506060880135915080821115613e5d57600080fd5b613e6989838a0161380c565b93506080880135915080821115613e7f57600080fd5b50613e8c88828901613650565b9150509295509295909350565b600080600080600060a08688031215613eb157600080fd5b613eba866135ed565b9450613ec8602087016135ed565b93506040860135925060608601359150608086013567ffffffffffffffff811115613ef257600080fd5b613e8c88828901613650565b60208082526028908201527f5468652067616d652072732072617465206d757374206265206c65737320746860408201526730b710189818181760c11b606082015260800190565b6001600160a01b039384168152919092166020820152604081019190915260600190565b60208082526034908201527f5468652067616d6520636f6e747261637420646f6573206e6f742065786973746040820152731034b7103a34329036b0b935b2ba383630b1b29760611b606082015260800190565b6020808252601f908201527f5265656e7472616e637947756172643a207265656e7472616e742063616c6c00604082015260600190565b60208082526026908201527f6d73672e73656e646572206973206e6f7420657175616c20746f2067616d652060408201526537bbb732b91760d11b606082015260800190565b6020808252602e908201527f546865204361726420494420616c72656164792065786973747320696e20746860408201526d329036b0b935b2ba383630b1b29760911b606082015260800190565b6020808252602d908201527f4552432054797065206d757374206265206f6e6520616d6f6e6720455243373260408201526c189037b91022a92198989a9a9760991b606082015260800190565b6020808252602a908201527f54686520656e642064617465206973206c61746572207468616e2074686520736040820152693a30b93a103230ba329760b11b606082015260800190565b634e487b7160e01b600052603260045260246000fd5b634e487b7160e01b600052601160045260246000fd5b600060001982141561416057614160614136565b5060010190565b600081518084526020808501945080840160005b838110156141975781518752958201959082019060010161417b565b509495945050505050565b6001600160a01b0385811682528416602082015260a0604082018190526000906141ce90830185614167565b82810360608401526141e08185614167565b838103608090940193909352505060008152602001949350505050565b6001600160a01b0394851681529290931660208301526040820152606081019190915260a06080820181905260009082015260c00190565b60208082526030908201527f546865206361726420494420646f6573206e6f7420657869737420696e20746860408201526f329033b0b6b29031b7b73a3930b1ba1760811b606082015260800190565b60208082526026908201527f6d73672e73656e646572206973206e6f7420657175616c20746f20636172642060408201526537bbb732b91760d11b606082015260800190565b60208082526032908201527f436172642054797065206d757374206265206f6e6520616d6f6e67204e46542c6040820152712053454d495f4e46542c205041434b41474560701b606082015260800190565b60208152600061352f6020830184614167565b60008282101561434257614342614136565b500390565b60006020828403121561435957600080fd5b8151801515811461352f57600080fd5b6020808252603d908201527f5468652061736b696e6720746f6b656e20494473206d7573742062652073616d60408201527f65206173207468617420696e20746865206d61726b6574706c6163652e000000606082015260800190565b60208082526044908201527f5468652061736b696e6720746f6b656e2049447327206f72646572206d75737460408201527f2062652073616d65206173207468617420696e20746865206d61726b6574706c60608201526330b1b29760e11b608082015260a00190565b8381526060602082015260006144496060830185614167565b828103604084015261445b8185614167565b9695505050505050565b6000821982111561447857614478614136565b500190565b8481526080602082015260006144966080830186614167565b82810360408401526144a88186614167565b91505060018060a01b038316606083015295945050505050565b60008160001904831182151516156144dc576144dc614136565b500290565b6000826144fe57634e487b7160e01b600052601260045260246000fd5b50049056fea264697066735822122014aeeafb857eea6de49c7bfa12350beb0debced30c4bc2ef66b2acd5583d1c4664736f6c63430008090033',
'ISKRA_MKP',
'mkp');

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

INSERT INTO deployed_contract(address, deployer_address, name, chain_seq, contract_id)
VALUES ('0x4843F3470476ae2A3CCC864eA9F5bEC4C6d4A767',
        '0x17F802d426291cBBFedFD20Af44C0e794027976C', 'MKP', 2, 3);