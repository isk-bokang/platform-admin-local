INSERT INTO chain(chain_id, name, chain_type, rpc_url) VALUES ('31337', 'HARDHAT', 'TEST_CHAIN', 'http://localhost:5432');
INSERT INTO chain(chain_id, name, chain_type, rpc_url) VALUES ('1001', 'BAOBAB', 'MAIN_CHAIN', 'https://api.baobab.klaytn.net:8651');

INSERT INTO contract_type(
    name, platform_name )
VALUES ('ISK_TOKEN', 'ISKRA');

INSERT INTO contract_type(
    name, platform_name )
VALUES ('PIONEER_NFT', 'ISKRA');

INSERT INTO contract_type(
    name, platform_name )
VALUES ('MARKETPLACE', 'ISKRA');

INSERT INTO contract_type(
    name, platform_name )
VALUES ('SEMI_NFT', 'GAME');



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
                                                                 4,
                                                                 'TOKEN1155');

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
                                                                         "internalType": "uint256",
                                                                         "name": "_numPackage",
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
                                                                     "name": "AmountDecreased",
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
                                                                         "internalType": "uint256",
                                                                         "name": "_numPackage",
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
                                                                         "name": "numAvailablePackage",
                                                                         "type": "uint256"
                                                                       },
                                                                       {
                                                                         "internalType": "uint256",
                                                                         "name": "numPurchasedPackage",
                                                                         "type": "uint256"
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
                                                                     "inputs": [],
                                                                     "name": "purchaserFeePermille",
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
                                                                     "name": "tokenIDsForBalance",
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
                                                                         "internalType": "uint256",
                                                                         "name": "",
                                                                         "type": "uint256"
                                                                       }
                                                                     ],
                                                                     "name": "tokenOwnerBalances",
                                                                     "outputs": [
                                                                       {
                                                                         "internalType": "uint256",
                                                                         "name": "balance",
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
'0x60806040523480156200001157600080fd5b50604051620018753803806200187583398101604081905262000034916200016e565b6001600081905580546001600160a01b031990811633179091556002805490911690556001600160a01b038216620000b35760405162461bcd60e51b815260206004820152601e60248201527f412069736b726120746f6b656e2061646472657373206973207a65726f2e000060448201526064015b60405180910390fd5b6001600160a01b0381166200011a5760405162461bcd60e51b815260206004820152602660248201527f412069736b726120696e636f6d652077616c6c65742061646472657373206973604482015265103d32b9379760d11b6064820152608401620000aa565b600580546001600160a01b039384166001600160a01b031991821617909155600680549290931691161790556019600955620001a6565b80516001600160a01b03811681146200016957600080fd5b919050565b600080604083850312156200018257600080fd5b6200018d8362000151565b91506200019d6020840162000151565b90509250929050565b6116bf80620001b66000396000f3fe60806040526004361061014b5760003560e01c80636ddd474d116100b6578063d4ee1d901161006f578063d4ee1d9014610496578063dd201059146104b6578063f23a6e61146104d6578063f2fde38b14610502578063f654ce5214610522578063fa1520451461056e57600080fd5b80636ddd474d14610387578063721573561461040257806379ba5097146104225780638da5cb5b14610437578063b695694214610457578063bc197c811461046a57600080fd5b80633225935111610108578063322593511461025a57806342e010011461027c578063464f192d1461029c5780635e54a45c146102bc5780635ff37bd2146102d25780636a6dda4d1461036757600080fd5b806301ffc9a714610150578063096ca6301461018557806309e35755146101bd578063150b7a02146101eb5780631548fd9e1461022f5780631cc014f014610245575b600080fd5b34801561015c57600080fd5b5061017061016b3660046110f7565b61058e565b60405190151581526020015b60405180910390f35b34801561019157600080fd5b506006546101a5906001600160a01b031681565b6040516001600160a01b03909116815260200161017c565b3480156101c957600080fd5b506101dd6101d8366004611121565b6105c5565b60405190815260200161017c565b3480156101f757600080fd5b5061021661020636600461120d565b630a85bd0160e11b949350505050565b6040516001600160e01b0319909116815260200161017c565b34801561023b57600080fd5b506101dd6103e881565b34801561025157600080fd5b506101dd601981565b34801561026657600080fd5b5061027a610275366004611275565b6105e6565b005b34801561028857600080fd5b5061027a6102973660046112b1565b610813565b3480156102a857600080fd5b5061027a6102b73660046112db565b610934565b3480156102c857600080fd5b506101dd60095481565b3480156102de57600080fd5b506103516102ed366004611121565b60086020819052600091825260409091208054600182015460028301546007840154948401546009850154600a909501546001600160a01b0385169660ff600160a01b8704811697600160a81b90970481169691939280821691610100909104168a565b60405161017c9a99989796959493929190611337565b34801561037357600080fd5b5061027a6103823660046113b3565b610a51565b34801561039357600080fd5b506103d66103a23660046113b3565b60076020526000908152604090208054600182015460028301546003909301546001600160a01b0390921692909160ff1684565b604080516001600160a01b0390951685526020850193909352918301521515606082015260800161017c565b34801561040e57600080fd5b506005546101a5906001600160a01b031681565b34801561042e57600080fd5b5061027a610b27565b34801561044357600080fd5b506001546101a5906001600160a01b031681565b61027a6104653660046113b3565b610bb0565b34801561047657600080fd5b5061021661048536600461144e565b63bc197c8160e01b95945050505050565b3480156104a257600080fd5b506002546101a5906001600160a01b031681565b3480156104c257600080fd5b5061027a6104d1366004611121565b610ed3565b3480156104e257600080fd5b506102166104f13660046114f8565b63f23a6e6160e01b95945050505050565b34801561050e57600080fd5b5061027a61051d3660046113b3565b610f99565b34801561052e57600080fd5b5061055961053d366004611121565b6003602052600090815260409020805460019091015460ff1682565b6040805192835290151560208301520161017c565b34801561057a57600080fd5b5061027a6105893660046113b3565b610fe5565b60006001600160e01b03198216630271189760e51b14806105bf57506301ffc9a760e01b6001600160e01b03198316145b92915050565b600481815481106105d557600080fd5b600091825260209091200154905081565b6001546001600160a01b031633146105fd57600080fd5b6001600160a01b0383166106635760405162461bcd60e51b815260206004820152602260248201527f5468652067616d6520636f6e74726163742061646472657373206973207a6572604482015261379760f11b60648201526084015b60405180910390fd5b6001600160a01b0382166106b95760405162461bcd60e51b815260206004820152601f60248201527f5468652067616d65206f776e65722061646472657373206973207a65726f2e00604482015260640161065a565b80158015906106ca57506103e88111155b6106e65760405162461bcd60e51b815260040161065a9061155d565b6001600160a01b03831660009081526007602052604090206003015460ff161561075c5760405162461bcd60e51b815260206004820152602160248201527f5468652067616d6520636f6e747261637420616c7265616479206578697374736044820152601760f91b606482015260840161065a565b604080516080810182526001600160a01b0384811680835260208084018681526000858701818152600160608089018281528d891680865260078852948b902099518a546001600160a01b031916991698909817895593519088015551600287015593516003909501805460ff19169515159590951790945584519283528201529182018390527f567a4c8c74a3005b40eefe41c1187288437407b6cac91d3db0e8a203e18229df910160405180910390a1505050565b6001546001600160a01b0316331461082a57600080fd5b6001600160a01b03821660009081526007602052604090206003015460ff1615156001146108b65760405162461bcd60e51b815260206004820152603360248201527f5468652067616d6520636f6e747261637420646f6573206e6f7420657869742060448201527234b7103a34329036b0b935b2ba383630b1b29760691b606482015260840161065a565b6103e88111156108d85760405162461bcd60e51b815260040161065a9061155d565b6001600160a01b038216600081815260076020908152604091829020600101849055815192835282018390527f92888d8b52de71d7d3e301fe6909d34c61a219c83d34dc9321390c0c937b498c91015b60405180910390a15050565b6001546001600160a01b0316331461094b57600080fd5b6001600160a01b03821660009081526007602052604090206003015460ff16151560011461098b5760405162461bcd60e51b815260040161065a906115a5565b6001600160a01b0381166109ed5760405162461bcd60e51b815260206004820152602360248201527f546865206e65772067616d65206f776e65722061646472657373206973207a6560448201526239379760e91b606482015260840161065a565b6001600160a01b0382811660008181526007602090815260409182902080546001600160a01b031916948616948517905581519283528201929092527f253f61e57aebb888daec979db2f90b4a6c43b2b54803d78d68af49ccfc76fed49101610928565b6001546001600160a01b03163314610a6857600080fd5b6001600160a01b038116610abe5760405162461bcd60e51b815260206004820181905260248201527f4e65772069736b726120746f6b656e2061646472657373206973207a65726f2e604482015260640161065a565b600554604080516001600160a01b03928316815291831660208301527ffcb16566dbf42f5e5c000e220dd4cacd946398624182c690390e1ecc949a083a910160405180910390a1600580546001600160a01b0319166001600160a01b0392909216919091179055565b6002546001600160a01b03163314610b3e57600080fd5b600154600254604080516001600160a01b0393841681529290911660208301527f8be0079c531659141344cd1fd0a4f28419497f9722a3daafe3b4186f6b6457e0910160405180910390a160028054600180546001600160a01b03199081166001600160a01b03841617909155169055565b60026000541415610c035760405162461bcd60e51b815260206004820152601f60248201527f5265656e7472616e637947756172643a207265656e7472616e742063616c6c00604482015260640161065a565b600260009081556001600160a01b038216815260076020526040902060030154819060ff161515600114610c495760405162461bcd60e51b815260040161065a906115a5565b6001546001600160a01b0316331480610c7b57506001600160a01b038181166000908152600760205260409020541633145b610cc75760405162461bcd60e51b815260206004820181905260248201527f6d73672e73656e646572206973206e6f742061626c6520746f20636c61696d2e604482015260640161065a565b6001600160a01b03821660009081526007602052604081206002810154600190910154909190610cfb9083906103e86110bb565b90506000610d09828461160f565b6001600160a01b038616600090815260076020526040812060020180549293508592909190610d3990849061160f565b90915550506005546001600160a01b03868116600090815260076020526040908190205490516323b872dd60e01b81523060048201529082166024820152604481018590529116906323b872dd90606401602060405180830381600087803b158015610da457600080fd5b505af1158015610db8573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250810190610ddc9190611626565b506005546006546040516323b872dd60e01b81523060048201526001600160a01b039182166024820152604481018490529116906323b872dd90606401602060405180830381600087803b158015610e3357600080fd5b505af1158015610e47573d6000803e3d6000fd5b505050506040513d601f19601f82011682018060405250810190610e6b9190611626565b506001600160a01b0385811660009081526007602090815260409182902054825186815291820185905290921682820152517f9f037742bf8c6dfe0726ba8fe20c1e7e83675e573d5e63c8b6152b631d5630849181900360600190a150506001600055505050565b6001546001600160a01b03163314610eea57600080fd5b8015801590610efb57506103e88111155b610f585760405162461bcd60e51b815260206004820152602860248201527f54686520707572636861736520666565206d757374206265206c65737320746860448201526730b710189818181760c11b606482015260840161065a565b60095460408051918252602082018390527f0ebad1d105ef1499ecf5efcc5bb2bf161821b15f3552c31f398c7cf87b996c74910160405180910390a1600955565b6001546001600160a01b03163314610fb057600080fd5b6001600160a01b038116610fc357600080fd5b600280546001600160a01b0319166001600160a01b0392909216919091179055565b6001546001600160a01b03163314610ffc57600080fd5b6001600160a01b0381166110525760405162461bcd60e51b815260206004820181905260248201527f4e65772069736b726120746f6b656e2061646472657373206973207a65726f2e604482015260640161065a565b600654604080516001600160a01b03928316815291831660208301527f4301406fa5b2f375fe4bbeeb28b051e024c5098bb5159ac5cf82ba511bafb4bd910160405180910390a1600680546001600160a01b0319166001600160a01b0392909216919091179055565b60006110d06110ca85856110d8565b836110eb565b949350505050565b60006110e48284611648565b9392505050565b60006110e48284611667565b60006020828403121561110957600080fd5b81356001600160e01b0319811681146110e457600080fd5b60006020828403121561113357600080fd5b5035919050565b80356001600160a01b038116811461115157600080fd5b919050565b634e487b7160e01b600052604160045260246000fd5b604051601f8201601f1916810167ffffffffffffffff8111828210171561119557611195611156565b604052919050565b600082601f8301126111ae57600080fd5b813567ffffffffffffffff8111156111c8576111c8611156565b6111db601f8201601f191660200161116c565b8181528460208386010111156111f057600080fd5b816020850160208301376000918101602001919091529392505050565b6000806000806080858703121561122357600080fd5b61122c8561113a565b935061123a6020860161113a565b925060408501359150606085013567ffffffffffffffff81111561125d57600080fd5b6112698782880161119d565b91505092959194509250565b60008060006060848603121561128a57600080fd5b6112938461113a565b92506112a16020850161113a565b9150604084013590509250925092565b600080604083850312156112c457600080fd5b6112cd8361113a565b946020939093013593505050565b600080604083850312156112ee57600080fd5b6112f78361113a565b91506113056020840161113a565b90509250929050565b634e487b7160e01b600052602160045260246000fd5b600281106113345761133461130e565b50565b6001600160a01b038b16815261014081016113518b611324565b8a602083015260038a106113675761136761130e565b8960408301528860608301528760808301528660a08301528560c08301528460e083015261139484611324565b836101008301528215156101208301529b9a5050505050505050505050565b6000602082840312156113c557600080fd5b6110e48261113a565b600082601f8301126113df57600080fd5b8135602067ffffffffffffffff8211156113fb576113fb611156565b8160051b61140a82820161116c565b928352848101820192828101908785111561142457600080fd5b83870192505b848310156114435782358252918301919083019061142a565b979650505050505050565b600080600080600060a0868803121561146657600080fd5b61146f8661113a565b945061147d6020870161113a565b9350604086013567ffffffffffffffff8082111561149a57600080fd5b6114a689838a016113ce565b945060608801359150808211156114bc57600080fd5b6114c889838a016113ce565b935060808801359150808211156114de57600080fd5b506114eb8882890161119d565b9150509295509295909350565b600080600080600060a0868803121561151057600080fd5b6115198661113a565b94506115276020870161113a565b93506040860135925060608601359150608086013567ffffffffffffffff81111561155157600080fd5b6114eb8882890161119d565b60208082526028908201527f5468652067616d652072732072617465206d757374206265206c65737320746860408201526730b710189818181760c11b606082015260800190565b60208082526034908201527f5468652067616d6520636f6e747261637420646f6573206e6f742065786973746040820152731034b7103a34329036b0b935b2ba383630b1b29760611b606082015260800190565b634e487b7160e01b600052601160045260246000fd5b600082821015611621576116216115f9565b500390565b60006020828403121561163857600080fd5b815180151581146110e457600080fd5b6000816000190483118215151615611662576116626115f9565b500290565b60008261168457634e487b7160e01b600052601260045260246000fd5b50049056fea26469706673582212209153bddb3fa5b7b6fb1a39aa33d953a4679ba82edc7d606d80acc0a34acb9be864736f6c63430008090033',
'3',
'MKP');

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
VALUES ('0x4e6eC987ed8E549A6308F12F0104E565EabA39d7',
        '0x17F802d426291cBBFedFD20Af44C0e794027976C', 'MKP', 2, 2);

INSERT INTO wallet(
    name,
    account_address)
VALUES ('WALLET1','0x17F802d426291cBBFedFD20Af44C0e794027976C');

INSERT INTO wallet(
    name,
    account_address)
VALUES ('WALLET2','0xe32e7D57b63Ce2E0CB2bFB1A4f1A610094EcfE64');

INSERT INTO wallet(
    account_address)
VALUES ('NONE');

INSERT INTO contract_role(
    name, on_chain_name, contract_id)
VALUES ('ISKRA_INCOME_WALLET', 'iskraIncomeWallet', 2);

INSERT INTO contract_role(
    name, on_chain_name, contract_id)
VALUES ('OWNER', 'owner', 2);

INSERT INTO contract_role(
    name, on_chain_name, contract_id)
VALUES ('NEW_OWNER', 'new_owner', 2);

