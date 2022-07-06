INSERT INTO chain(chain_id, chain_name, network_id, rpc_url) VALUES ('001', 'CHAIN 1', 'NETWORK 1', 'https://');
INSERT INTO chain(chain_id, chain_name, network_id, rpc_url) VALUES ('002', 'CHAIN 2', 'NETWORK 2', 'https://');

INSERT INTO contract(abi, bytecode, contract_type, name) VALUES ('{abi : abi}', '0xbytecode', 'contractType1', 'contractName1');
INSERT INTO contract(abi, bytecode, contract_type, name) VALUES ('{abi : abi}', '0xbytecode', 'contractType2', 'contractName2');
INSERT INTO contract(abi, bytecode, contract_type, name) VALUES ('{abi : abi}', '0xbytecode', 'contractType3', 'contractName3');

INSERT INTO service(category, name) VALUES ('WEB GAME', 'GAME1');
INSERT INTO service(category, name) VALUES ('WEB GAME', 'GAME2');
INSERT INTO service(category, name) VALUES ('WEB GAME', 'GAME3');
INSERT INTO service(category, name) VALUES ('WEB GAME', 'GAME4');
INSERT INTO service(category, name) VALUES ('WEB GAME', 'GAME5');

INSERT INTO node( ip_address, node_type, chain_id) VALUES ('ipaddr1', 'type1', 1);
INSERT INTO node( ip_address, node_type, chain_id) VALUES ('ipaddr2', 'type1', 2);
INSERT INTO node( ip_address, node_type, chain_id) VALUES ('ipaddr3', 'type1', 1);
INSERT INTO node( ip_address, node_type, chain_id) VALUES ('ipaddr4', 'type1', 2);
INSERT INTO node( ip_address, node_type, chain_id) VALUES ('ipaddr5', 'type1', 1);

INSERT INTO contract_deploy(address, tx_hash, chain_id, contract_id, service_id) VALUES ('dummy1', 'dummy1', 1, 1, 1);
INSERT INTO contract_deploy(address, tx_hash, chain_id, contract_id, service_id) VALUES ('dummy2', 'dummy2', 2, 2, 2);
INSERT INTO contract_deploy(address, tx_hash, chain_id, contract_id, service_id) VALUES ('dummy4', 'dummy4', 2, 3, 2);
INSERT INTO contract_deploy(address, tx_hash, chain_id, contract_id, service_id) VALUES ('dummy3', 'dummy3', 1, 3, 3);
