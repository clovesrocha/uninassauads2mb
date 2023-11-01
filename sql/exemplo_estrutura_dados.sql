CREATE TABLE `usuario_pf` (
  `cpf` integer PRIMARY KEY,
  `id` integer,
  `nome` varchar(255),
  `sobrenome` varchar(255)
);

CREATE TABLE `cadastro_pj` (
  `cnpj_num` integer PRIMARY KEY,
  `cnpj_nome` varchar(255),
  `id` integer,
  `email` varchar(255),
  `descricao` varchar(255)
);

ALTER TABLE `cadastro_pj` ADD FOREIGN KEY (`cnpj_num`) REFERENCES `usuario_pf` (`cpf`);
