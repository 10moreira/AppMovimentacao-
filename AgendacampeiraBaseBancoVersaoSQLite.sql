-- SQLite
-- Mateus Moreira

-- Banco de dados: `agenda_campeira`
--

-- --------------------------------------------------------


CREATE TABLE categoria_animal (
  `id` int(2) NOT NULL,
  `nome` varchar(30) NOT NULL,
  `meses_inicial` int(2) NOT NULL,
  `meses_final` int(2) NOT NULL);

INSERT INTO `categoria_animal` (`id`, `nome`, `meses_inicial`, `meses_final`) VALUES
(1, '0-12 meses', 0, 12),
(2, '13-24 meses', 13, 24),
(3, '25-36 meses', 25, 36),
(4, 'acima de 36 meses', 37, 300);


select * from categoria_animal;


CREATE TABLE origem_destino_sistema (
  `origem_destino_sistema_id` int(10) NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `tipo_operacao` char(1) NOT NULL);


INSERT INTO `origem_destino_sistema` (`origem_destino_sistema_id`, `descricao`, `tipo_operacao`) VALUES
(1, 'nascimento', 'e'),
(2, 'compra', 'e'),
(3, 'venda', 's'),
(4, 'morte', 's'),
(5, 'desaparecimento', 's'),
(6, 'abigeato', 's'),
(7, 'reaparecimento', 'e');


select * from origem_destino_sistema;


CREATE TABLE tipo_usuario (
  `id` int(2) NOT NULL,
  `nome` varchar(20) NOT NULL);

INSERT INTO `tipo_usuario` (`id`, `nome`) VALUES
(1, 'gerente'),
(2, 'colaborador');


select * from tipo_usuario;


CREATE TABLE usuario (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `fone_ddi` int(2)DEFAULT NULL,
  `fone_area` int(2) DEFAULT NULL,
  `fone_numero` int(9) DEFAULT NULL);


INSERT INTO `usuario` (`id`,`email`, `nome`, `fone_ddi`, `fone_area`, `fone_numero`) VALUES
(1, 'supermario@gmail.com', 'Super Mario', '53', '53', '32476789'),
(2, 'luigi@gmail.com', 'Luigi', '53', '53', '32474576');

select * from usuario;



CREATE TABLE municipio (
  `id` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL);


CREATE TABLE fazenda (
  `id` int(10) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `municipio_id` int(10) NOT NULL,
  `localidade` varchar(40) NOT NULL,
  `latitude` float NOT NULL,
  `longitude` float NOT NULL);

CREATE TABLE fazenda_usuario (
  `fazenda_id` int(10)NOT NULL,
  `usuario_id` int(10)NOT NULL,
  `tipo_usuario_id` int(2) NOT NULL);


CREATE TABLE genero_animal (
  `id` int(2) NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `categoria_animal_id` int(2)NOT NULL,
  `sexo` char(1) NOT NULL);


INSERT INTO `genero_animal` (`id`, `descricao`, `categoria_animal_id`, `sexo`) VALUES
(1, 'bezerro / terneiro', 1, 'M'),
(2, 'bezerra / terneira', 1, 'F'),
(3, 'novilho', 2, 'M'),
(4, 'novilha', 2, 'F'),
(5, 'novilha de 1a cria', 2, 'F'),
(6, 'touro', 3, 'M'),
(7, 'vaca de cria', 3, 'F'),
(8, 'vaca descarte', 3, 'F'),
(9, 'boi', 3, 'M');

select * from genero_animal;


CREATE TABLE origem_destino (
  `fazenda_id` int(2) NOT NULL,
  `origem_destino_id` int(10)NOT NULL,
  `descricao` varchar(20) NOT NULL,
  `tipo` char(1) NOT NULL);



CREATE TABLE pesagem (
  `fazenda_id` int(10) NOT NULL,
  `origem_destino_id` int(2) NOT NULL,
  `genero_animal` int(2) NOT NULL,
  `data_pesagem` date NOT NULL,
  `usuario_id` int(10) NOT NULL,
  `quantidade` int(3)NOT NULL,
  `peso_medio` int(3)NOT NULL);


CREATE TABLE nascimento (
  `fazenda_id` int(10)NOT NULL,
  `origem_destino_id` int(2) NOT NULL,
  `data_nascimento` date NOT NULL,
  `sexo` char(1) NOT NULL,
  `quantidade` int(2)NOT NULL,
  `usuario_id` int(10) NOT NULL);



CREATE TABLE movimento (
  `fazenda_id` int(10)NOT NULL,
  `data_movimento` date NOT NULL,
  `genero_animal_id` int(2)NOT NULL,
  `origem_id` int(2) NOT NULL,
  `destino_id` int(2) NOT NULL,
  `quantidade` int(3) NOT NULL,
  `usuario_id` int(2) NOT NULL);



CREATE TABLE estoque(
  `fazenda_id` int(10)NOT NULL,
  `origem_destino_id` int(2)NOT NULL,
  `genero_animal_id` int(2) NOT NULL,
  `saldo` int(4) NOT NULL);



CREATE TABLE atividade (
  `fazenda_id` int(10)NOT NULL,
  `datahora_cadastro` datetime NOT NULL,
  `usuario_id_cadastro` int(10) NOT NULL,
  `descricao` varchar(100) NOT NULL,
  `situacao` char(1) NOT NULL,
  `datahora_realizacao` datetime DEFAULT NULL,
  `usuario_id_realizacao` int(10) NOT NULL);


