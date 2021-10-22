-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2021 às 02:51
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 7.4.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `ovidoria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `anexo`
--

CREATE TABLE `anexo` (
  `id_anexo` varchar(255) NOT NULL,
  `caminho` varchar(255) DEFAULT NULL,
  `nome_anexo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `historico`
--

CREATE TABLE `historico` (
  `id_historico` int(11) NOT NULL,
  `orgao_publico` int(11) DEFAULT NULL,
  `ouvidor` varchar(11) DEFAULT NULL,
  `adm_publico` varchar(11) DEFAULT NULL,
  `manifestacao` int(11) DEFAULT NULL,
  `respondida` tinyint(1) DEFAULT NULL,
  `data_rejeicao` timestamp NULL DEFAULT NULL,
  `motivo` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `historico`
--

INSERT INTO `historico` (`id_historico`, `orgao_publico`, `ouvidor`, `adm_publico`, `manifestacao`, `respondida`, `data_rejeicao`, `motivo`) VALUES
(1, 19, '12345678911', '12345678913', 1, 1, NULL, NULL),
(2, 21, '12345678913', NULL, 2, NULL, NULL, NULL),
(3, 21, '12345678913', NULL, 3, NULL, NULL, NULL),
(4, 21, '12345678913', NULL, 4, NULL, NULL, NULL),
(5, 21, '12345678913', NULL, 4, NULL, NULL, NULL),
(6, 21, '12345678913', NULL, 4, NULL, NULL, NULL),
(7, 21, '12345678913', NULL, 4, NULL, NULL, NULL),
(8, 21, '12345678913', NULL, 4, NULL, NULL, NULL),
(9, 1, '12345678913', NULL, 5, NULL, NULL, NULL),
(10, 1, '12345678913', NULL, 5, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imagem`
--

CREATE TABLE `imagem` (
  `id_imagem` int(11) NOT NULL,
  `nome_imagem` varchar(255) DEFAULT NULL,
  `caminho_imagem` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `interesse`
--

CREATE TABLE `interesse` (
  `idManifestacao` varchar(12) NOT NULL,
  `idUsuario` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `interesse`
--

INSERT INTO `interesse` (`idManifestacao`, `idUsuario`) VALUES
('1', '00865013217'),
('1', '12345678913'),
('2', '00865013217'),
('3', '00865013217'),
('4', '00865013217'),
('5', '00865013217'),
('6', '00865013217'),
('7', '00865013217');

-- --------------------------------------------------------

--
-- Estrutura da tabela `manifestacao`
--

CREATE TABLE `manifestacao` (
  `id_manifestacao` int(11) NOT NULL,
  `cidadao_cpf` varchar(11) NOT NULL,
  `id_tipo_manifestacao` int(11) NOT NULL,
  `id_situacao` int(11) NOT NULL,
  `assunto` varchar(100) NOT NULL,
  `mensagem` varchar(1000) NOT NULL,
  `sigilo` tinyint(1) DEFAULT NULL,
  `id_anexo` varchar(255) DEFAULT NULL,
  `data_manifestacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `resposta` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `manifestacao`
--

INSERT INTO `manifestacao` (`id_manifestacao`, `cidadao_cpf`, `id_tipo_manifestacao`, `id_situacao`, `assunto`, `mensagem`, `sigilo`, `id_anexo`, `data_manifestacao`, `resposta`) VALUES
(1, '00865013217', 4, 3, 'teste de manifestação', 'alguem falou mal de mim', 0, '', '2021-10-05 14:29:30', 'culpta tuaaa hora'),
(2, '00865013217', 1, 2, 'teste de manifestação', 'dbbfbxcbfffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff', 1, '', '2021-10-05 14:29:58', NULL),
(3, '00865013217', 2, 2, 'sdjklvhsdjvhsjdvhsdjvhsdjvsd', 'dsvsjkdvgjksdvhshdvklsdhv\r\nsdvsdvksjkdvlksdnvsd\r\nv\r\nsdvklsdbvlbsdlkvbsdlkvbsdv\r\nsdvsdlvksjdbvlksd', 0, '', '2021-10-05 14:42:33', NULL),
(4, '00865013217', 3, 2, 'dskjvjsdhvklhlsdnvsdkvlsdnvsdv', 'dsvlksdhvsdvshdvdsiovh´PIOHDSVOHSDOVNBSDV\r\nDSVLSDVJGSDVJKBDSMVSNDVSD DSV\r\nASDFDSFSD', 0, '', '2021-10-05 14:45:05', NULL),
(5, '00865013217', 1, 2, 'ghcsgakjhdskajdlsakdlaskdslaçdkçsladsads', 'sdgajshdklasdksahkdfklsacksaklasd\r\nsadçljasdklsa', 0, '', '2021-10-05 15:04:54', NULL),
(6, '00865013217', 1, 1, 'teste de aplicação', 'hgdsjkshdfsdfkdsjfsdjfskdfjsldfsdklfskldhfds\r\ndsfksdjfhslfkdsfkldsf\r\nfksdfsdfjlsdfjskdlfsdklfskdlfskldfjsdhflksdhfsd', 0, 'anexo-05-10-2021_07_48_28', '2021-10-05 05:00:00', NULL),
(7, '00865013217', 1, 1, 'dsgsdgsdgsdgdsg', 'skjfjskafhsdfhsdklk', 0, '', '2021-10-20 05:00:00', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `id_noticia` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `subtitulo` varchar(250) NOT NULL,
  `descricao` longtext NOT NULL,
  `data_publicacao` datetime DEFAULT current_timestamp(),
  `id_imagem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estrutura da tabela `orgaopublico`
--

CREATE TABLE `orgaopublico` (
  `id_orgao_publico` int(11) NOT NULL,
  `sigla_orgao_publico` varchar(20) DEFAULT NULL,
  `nome_orgao_publico` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `orgaopublico`
--

INSERT INTO `orgaopublico` (`id_orgao_publico`, `sigla_orgao_publico`, `nome_orgao_publico`) VALUES
(1, 'Agehab', 'Agencia de Habitacao de Mato Grosso do Sul'),
(2, 'Agepan', 'Agencia Estadual de Regulacao de Servicos Publicos'),
(3, 'Agesul', 'Agencia Estadual de Gestao de Empreendimentos de Mato Grosso do Sul'),
(4, 'Agraer', 'Agencia de Desenvolvimento Agrario e Extensao Rural'),
(5, 'Assomasul', 'Associacao dos Municipios de Mato Grosso do Sul'),
(6, 'Detran/MS', 'Departamento Estadual de Transito de Mato Grosso do Sul'),
(7, 'Funtrab', 'Fundacao do Trabalho e Economia Solidaria'),
(8, 'Iagro', 'Agencia Estadual de Defesa Sanitaria Animal e Vegetal'),
(9, 'Imprensa', 'Diario Oficial do Estado de Mato Grosso do Sul'),
(10, 'Jucems', 'Junta Comercial do Estado de Mato Grosso do Sul'),
(11, 'MSGAS', 'Companhia de Gas do Estado de Mato Grosso do Sul'),
(12, 'PM/MS', 'Policia Militar de Mato Grosso do Sul'),
(13, 'Portal MS', 'Governo do Estado de Mato Grosso do Sul'),
(14, 'SAD', 'Secretaria de Estado de Administracao do MS'),
(15, 'Sanesul', 'Empresa de Saneamento do Estado de Mato Grosso do Sul'),
(16, 'SED', 'Secretaria de Estado de Educacao de Mato Grosso do Sul'),
(17, 'Sefaz', 'Secretaria de Estado de Fazenda de Mato Grosso do Sul'),
(18, 'Sejusp', 'Secretaria de Estado de Justica e Seguranca Publica'),
(19, 'Semac', 'Secretaria de Estado do Meio Ambiente, das Cidades, do Planejamento, da Ciencia e Tecnologia'),
(20, 'Seprotur', 'Secretaria de Estado de Desenvolvimento Agrario, da Producao, da Industria, do Comercio e do Turismo'),
(21, 'SES', 'Secretaria de Estado de Saude de Mato Grosso do Sul'),
(22, 'Setass', 'Secretaria de Estado de Trabalho, Assistencia Social e Economia Solidaria');

-- --------------------------------------------------------

--
-- Estrutura da tabela `situacao`
--

CREATE TABLE `situacao` (
  `id_situacao` int(11) NOT NULL,
  `nome_situacao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `situacao`
--

INSERT INTO `situacao` (`id_situacao`, `nome_situacao`) VALUES
(1, 'Aberta'),
(2, 'Encaminhada'),
(3, 'Fechada');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipomanifestacao`
--

CREATE TABLE `tipomanifestacao` (
  `id_tipo_manifestacao` int(11) NOT NULL,
  `nome_tipo_manifestacao` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipomanifestacao`
--

INSERT INTO `tipomanifestacao` (`id_tipo_manifestacao`, `nome_tipo_manifestacao`) VALUES
(1, 'Elogio'),
(2, 'Reclamação'),
(3, 'Sugestao'),
(4, 'Denuncia');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipousuario`
--

CREATE TABLE `tipousuario` (
  `id_tipo_usuario` int(11) NOT NULL,
  `nome_tipo_usuario` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipousuario`
--

INSERT INTO `tipousuario` (`id_tipo_usuario`, `nome_tipo_usuario`) VALUES
(1, 'Cidadao'),
(2, 'Ouvidor'),
(3, 'Administrador Publico'),
(4, 'Administrador Sistema'),
(5, 'Desativado');

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuario`
--

CREATE TABLE `usuario` (
  `cpf` varchar(11) NOT NULL,
  `id_tipo_usuario` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(150) NOT NULL,
  `telefone` varchar(11) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `usuario`
--

INSERT INTO `usuario` (`cpf`, `id_tipo_usuario`, `nome`, `endereco`, `telefone`, `email`, `senha`) VALUES
('00865013217', 1, 'Roberto Araujo de Moraes', 'tv.leme', '68999791794', 'endriosrobert@gmail.com', '123456'),
('12345678910', 1, 'Joao da Silva', 'Rua Lima Souza, 234', '999999999', 'fernando@gmail.com', '12345'),
('12345678911', 2, 'Paulo da Silva Lima', 'Rua Lima Souza, 235', '999999999', 'paulo@gmail.com', '12345'),
('12345678912', 3, 'Maria da Silva', 'Rua Lima Souza, 236', '999999999', 'maria@gmail.com', '12345'),
('12345678913', 4, 'Joana da Silva', 'Rua Lima Souza, 237', '999999999', 'joana@gmail.com', '12345');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `anexo`
--
ALTER TABLE `anexo`
  ADD PRIMARY KEY (`id_anexo`);

--
-- Índices para tabela `historico`
--
ALTER TABLE `historico`
  ADD PRIMARY KEY (`id_historico`),
  ADD KEY `FK_hist_manif` (`manifestacao`),
  ADD KEY `FK_hist_orgpublico` (`orgao_publico`),
  ADD KEY `FK_hist_ouvidor` (`ouvidor`),
  ADD KEY `FK_hist_admpublico` (`adm_publico`);

--
-- Índices para tabela `imagem`
--
ALTER TABLE `imagem`
  ADD PRIMARY KEY (`id_imagem`);

--
-- Índices para tabela `interesse`
--
ALTER TABLE `interesse`
  ADD PRIMARY KEY (`idManifestacao`,`idUsuario`);

--
-- Índices para tabela `manifestacao`
--
ALTER TABLE `manifestacao`
  ADD PRIMARY KEY (`id_manifestacao`),
  ADD KEY `FK_manif_situacao` (`id_situacao`),
  ADD KEY `FK_manif_anexo` (`id_anexo`),
  ADD KEY `FK_manif_tipomanif` (`id_tipo_manifestacao`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`id_noticia`),
  ADD KEY `fk_noticia_imagem` (`id_imagem`);

--
-- Índices para tabela `orgaopublico`
--
ALTER TABLE `orgaopublico`
  ADD PRIMARY KEY (`id_orgao_publico`);

--
-- Índices para tabela `situacao`
--
ALTER TABLE `situacao`
  ADD PRIMARY KEY (`id_situacao`);

--
-- Índices para tabela `tipomanifestacao`
--
ALTER TABLE `tipomanifestacao`
  ADD PRIMARY KEY (`id_tipo_manifestacao`);

--
-- Índices para tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  ADD PRIMARY KEY (`id_tipo_usuario`);

--
-- Índices para tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`cpf`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_tipo_usuario` (`id_tipo_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `historico`
--
ALTER TABLE `historico`
  MODIFY `id_historico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `imagem`
--
ALTER TABLE `imagem`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `manifestacao`
--
ALTER TABLE `manifestacao`
  MODIFY `id_manifestacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `id_noticia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `orgaopublico`
--
ALTER TABLE `orgaopublico`
  MODIFY `id_orgao_publico` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de tabela `situacao`
--
ALTER TABLE `situacao`
  MODIFY `id_situacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tipomanifestacao`
--
ALTER TABLE `tipomanifestacao`
  MODIFY `id_tipo_manifestacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tipousuario`
--
ALTER TABLE `tipousuario`
  MODIFY `id_tipo_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
