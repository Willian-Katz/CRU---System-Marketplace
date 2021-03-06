CREATE TABLE VENDA (
ID INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, 
FORMA_PAGAMENTO VARCHAR(255), 
ID_CLIENTE INTEGER, 
ID_VENDEDOR INTEGER, PRIMARY KEY (ID))

CREATE TABLE ITEM (
ID INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, 
NOME VARCHAR(255), 
UNIDADE VARCHAR(255), 
VALOR FLOAT, PRIMARY KEY (ID))

CREATE TABLE CLIENTE (
ID INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, 
CPF VARCHAR(255), 
ENDERECO VARCHAR(255), 
NOME VARCHAR(255), 
PRIMARY KEY (ID))

CREATE TABLE ITEM_VENDA (
ID INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, 
QUANTIDADE FLOAT, 
ID_ITEM INTEGER, 
ID_VENDA INTEGER, 
PRIMARY KEY (ID))

CREATE TABLE VENDEDOR (
ID INTEGER GENERATED BY DEFAULT AS IDENTITY NOT NULL, 
CPF VARCHAR(255), 
NOME VARCHAR(255), 
SALARIO FLOAT, 
PRIMARY KEY (ID))

ALTER TABLE VENDA ADD CONSTRAINT VENDA_ID_VENDEDOR FOREIGN KEY (ID_VENDEDOR) REFERENCES VENDEDOR (ID)
ALTER TABLE VENDA ADD CONSTRAINT VENDA_ID_CLIENTE FOREIGN KEY (ID_CLIENTE) REFERENCES CLIENTE (ID)
ALTER TABLE ITEM_VENDA ADD CONSTRAINT ITEM_VENDAID_VENDA FOREIGN KEY (ID_VENDA) REFERENCES VENDA (ID)
ALTER TABLE ITEM_VENDA ADD CONSTRAINT ITEM_VENDA_ID_ITEM FOREIGN KEY (ID_ITEM) REFERENCES ITEM (ID)
