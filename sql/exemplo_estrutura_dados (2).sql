CREATE TABLE [usuario] (
  [cpf] interger PRIMARY KEY,
  [nome] nvarchar(255),
  [sobrenome] nvarchar(255),
  [idade] interger
)
GO

CREATE TABLE [cadastro_pj] (
  [cnpj] interger PRIMARY KEY,
  [nome_empresa] nvarchar(255),
  [tipo_atividade] nvarchar(255)
)
GO

CREATE TABLE [produto] (
  [id] interger PRIMARY KEY,
  [nome] nvarchar(255),
  [descricao] nvarchar(255),
  [preco] interger
)
GO

ALTER TABLE [cadastro_pj] ADD FOREIGN KEY ([cnpj]) REFERENCES [usuario] ([cpf])
GO

ALTER TABLE [produto] ADD FOREIGN KEY ([id]) REFERENCES [cadastro_pj] ([cnpj])
GO
