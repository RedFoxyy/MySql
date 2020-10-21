-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 21-Out-2020 às 18:25
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--
CREATE DATABASE IF NOT EXISTS `jornal` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `jornal`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`ano`) VALUES
(1960),
(1961),
(1962),
(1963),
(1964),
(1965),
(1966),
(1967),
(1968),
(1969),
(1970),
(1971),
(1972),
(1973),
(1974),
(1975),
(1976),
(1977),
(1978),
(1979),
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esportes'),
(2, 'Entretenimento'),
(3, 'Politica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codCategoria`, `ano`, `mes`, `dia`, `codRedator`) VALUES
(1, 'Número de candidatos a prefeito aumenta em mais de 40% das cidades do país; disputas mais acirradas ', 'O número de candidatos a prefeito aumentou em 41% dos municípios do Brasil nas eleições 2020. Quando comparado à última eleição municipal, em 2016, 2,2 mil cidades tiveram mais registros de candidaturas para disputar as prefeituras, segundo levantamento do G1 feito com dados do Tribunal Superior Eleitoral (TSE).\r\n\r\nAo todo, 19 mil pessoas se candidataram a prefeito neste ano, um aumento de 14% em relação aos 17,6 mil concorrentes de 2016.', 3, 2020, 10, 10, 1),
(2, 'Traficante André do Rap é solto após habeas corpus concedido pelo STF', 'O traficante André Oliveira Macedo, conhecido como André do Rap, um dos chefes do Primeiro Comando da Capital (PCC), facção criminosa que atua dentro e fora dos presídios de São Paulo, foi libertado da Penitenciária de Presidente Venceslau, no interior paulista, na manhã deste sábado (10).\r\n\r\nEle teve um habeas corpus concedido pelo ministro do Supremo Tribunal Federal (STF) Marco Aurélio Mello, divulgado no final da tarde de sexta-feira (9).\r\n\r\nAndré do Rap foi preso em setembro de 2019, em uma operação feita pela Polícia Civil de São Paulo em um condomínio de luxo em Angra dos Reis, no litoral do Rio de Janeiro e é investigado por ter função de chefia dentro do PCC e gerenciar o envio de grandes remessas de cocaína à Europa.\r\n\r\nAo ser libertado neste sábado, André do Rap disse que mora no Guarujá, onde poderia ser encontrado.\r\n\r\nEm nota, a Secretária da Administração Penitenciária (SAP) confirmou \"que deu cumprimento hoje, 10, ao alvará de soltura em favor do preso André Oliveira Macedo, por decisão judicial do Supremo Tribunal Federal. Ele saiu da Penitenciária II de Presidente Venceslau às 11h50 da manhã.\"', 3, 2020, 10, 8, 7),
(3, 'Ministro Luiz Eduardo Ramos, da Secretaria de Governo, está com Covid-19', 'O ministro Luiz Eduardo Ramos, da Secretaria de Governo, está com Covid-19. A informação foi divulgada pelo Palácio do Planalto neste sábado (10).\r\n\r\nAinda de acordo com o Planalto, Ramos tem apenas sintomas leves de gripe e ficará em isolamento social.\r\n\r\n\"Informamos que o ministro-chefe da Secretaria de Governo da Presidência da República Luiz Eduardo Ramos, testou positivo para Covid-19 hoje [sábado]. O ministro está apenas com sintomas gripais leves. Ramos ficará em isolamento, trabalhando de forma remota\", disse o governo em nota.', 3, 2020, 11, 14, 5),
(4, 'Número de candidatos a prefeito aumenta em mais de 40% das cidades do país', 'O número de candidatos a prefeito aumentou em 41% dos municípios do Brasil nas eleições 2020. Quando comparado à última eleição municipal, em 2016, 2,2 mil cidades tiveram mais registros de candidaturas para disputar as prefeituras, segundo levantamento do G1 feito com dados do Tribunal Superior Eleitoral (TSE).\r\n\r\nAo todo, 19 mil pessoas se candidataram a prefeito neste ano, um aumento de 14% em relação aos 17,6 mil concorrentes de 2016.', 3, 2020, 10, 10, 1),
(5, 'Traficante André do Rap é solto após habeas corpus concedido pelo STF', 'O traficante André Oliveira Macedo, conhecido como André do Rap, um dos chefes do Primeiro Comando da Capital (PCC), facção criminosa que atua dentro e fora dos presídios de São Paulo, foi libertado da Penitenciária de Presidente Venceslau, no interior paulista, na manhã deste sábado (10).\r\n\r\nEle teve um habeas corpus concedido pelo ministro do Supremo Tribunal Federal (STF) Marco Aurélio Mello, divulgado no final da tarde de sexta-feira (9).\r\n\r\nAndré do Rap foi preso em setembro de 2019, em uma operação feita pela Polícia Civil de São Paulo em um condomínio de luxo em Angra dos Reis, no litoral do Rio de Janeiro e é investigado por ter função de chefia dentro do PCC e gerenciar o envio de grandes remessas de cocaína à Europa.\r\n\r\nAo ser libertado neste sábado, André do Rap disse que mora no Guarujá, onde poderia ser encontrado.\r\n\r\nEm nota, a Secretária da Administração Penitenciária (SAP) confirmou \"que deu cumprimento hoje, 10, ao alvará de soltura em favor do preso André Oliveira Macedo, por decisão judicial do Supremo Tribunal Federal. Ele saiu da Penitenciária II de Presidente Venceslau às 11h50 da manhã.\"', 3, 2020, 10, 8, 7),
(6, 'Ministro Luiz Eduardo Ramos, da Secretaria de Governo, está com Covid-19', 'O ministro Luiz Eduardo Ramos, da Secretaria de Governo, está com Covid-19. A informação foi divulgada pelo Palácio do Planalto neste sábado (10).\r\n\r\nAinda de acordo com o Planalto, Ramos tem apenas sintomas leves de gripe e ficará em isolamento social.\r\n\r\n\"Informamos que o ministro-chefe da Secretaria de Governo da Presidência da República Luiz Eduardo Ramos, testou positivo para Covid-19 hoje [sábado]. O ministro está apenas com sintomas gripais leves. Ramos ficará em isolamento, trabalhando de forma remota\", disse o governo em nota.', 3, 2020, 11, 14, 5),
(7, 'Angélica abre jogo sobre \'Simples Assim\'', 'Chegou o grande dia! A estreia do Simples Assim marca a volta da apresentadora, atriz e cantora Angélica aos palcos e às telas neste sábado, 10/10. Para comemorar sua volta à televisão, ela falou com a gente sobre tudo que ela aprendeu na estrada que percorreu junto com seu novo programa – desde que o projeto começou até a estreia. A entrevista você confere no vídeo:\r\n\r\n\"Essa troca está sendo rica demais. Muito aprendizado, mas principalmente, muita alegria. Uma felicidade incrível de poder estar junto de todo mundo dividindo as angústias, as felicidades, as dúvidas...\", celebra Angélica.', 2, 2020, 7, 14, 6),
(8, 'Ana Caetano comenta sobre música tema do \'Simples Assim\'', 'A estreia do Simples Assim, novo programa da Angélica, tá chegando e não podíamos estar mais animados. Quem também está nas nuvens é o duo Anavitória, que gravou a canção tema da atração. Essa foi a primeira música de abertura para televisão que elas já fizeram. Para falar um pouco mais sobre, Ana Caetano, representando a dupla, tomou o microfone e contou um pouco mais sobre como foi essa experiência.\r\n\r\n\"A gente ficou tão feliz quando soubemos que a música seria essa - a gente ama Lenine e a gente ama essa música. Talvez se não tivesse rolado esse convite, a gente nem pensaria em regravar essa canção. Que bom que aconteceu porque a gente ficou muito feliz mesmo.\"\r\nA música em questão, como o programa, se chama \"Simples Assim\". A composição de Dudu Falcão em parceria com o cantor faz parte do álbum de 2015 de Lenine, Carbono.\r\n\r\n', 2, 2020, 9, 19, 5),
(9, 'Ritinha casa com Ruy e coloca cauda de sereia na lua de mel', 'Na lua de mel, Ritinha decide fazer uma surpresa para o marido e o deixa encantado. Ela coloca sua cauda de sereia e lembra que eles se conheceram no rio. Ruy fica seduzido:\r\n\r\n\"Não! A cauda é golpe baixo\", diz ele, enquanto o clima esquenta entre os dois.', 2, 2020, 3, 31, 7),
(10, 'Treinos e entrevistas coletivas da seleção brasileira', 'Movimento dos jogadores do ataque da Seleção\r\n\r\nÉ um pouco de tudo. É o treinamento, as informações colocadas pela comissão, a forma como querem que a gente jogue. E na partida tem o improviso, a leitura do espaço. Sem a bola a gente tem que estar como o Tite quer, para recuperar a bola o mais rápido possível, essa é a nossa forma de jogo. E com a bola é aquilo, a gente sempre ataca em bloco, com o Ney flutuando pela esquerda, com o Lodi avançando bem. Isso vai vindo de treinamento e do feeling dentro de campo.\r\n\r\nAgora\r\nDesempenho pós-pandemia, incluindo Bayern, Seleção e Barcelona\r\n\r\nNa pandemia eu tive um momento em que operei o tornozelo, foi complicado. A partir dali comecei a trabalhar bastante, triplicado, porque foi um momento em que fiquei parado, e não podia fazer muito na parte inferior. Projetando o futuro na temporada, quero manter esse bom momento, de alegria, de confiança. Quero conseguir coisas boas e importantes como grupo. No clube são os títulos, e isso que eu almejo para o meu futuro próximo.\r\n\r\nHá 2 minutos\r\nCONTINUA DEPOIS DA PUBLICIDADE\r\nEvolução física no Bayern de Munique\r\n\r\nRealmente tivemos algumas mudanças na parte física. Eu, particularmente, estou me sentindo bem assim. Claro, querendo melhorar sempre. O que aprendi no Bayern e que posso frisar é o trabalho. Eu já era assim, mas se hoje tiver que trabalhar três, quatro vezes mais do que o normal, eu vou fazer, e faço. Tenho trabalhado muito a parte física e tenho me sentido muito bem. Lá no Bayern eles levam muito para esse lado da intensidade, do treinamento, e você vê que muitos atletas evoluíram nessa parte.', 1, 2017, 10, 19, 1),
(11, 'Marinho não treina e é dúvida para jogo contra o Grêmio', 'O técnico Cuca, do Santos, ainda não sabe se poderá contar com o atacante Marinho e o zagueiro Lucas Veríssimo, contra o Grêmio, neste domingo, às 16h, na Vila Belmiro, às 16h (de Brasília), pelo Campeonato Brasileiro.\r\n\r\nO atacante, que tem um desconforto muscular na coxa esquerda, não participou do treino em campo na manhã deste sábado.\r\n\r\nJá o zagueiro, em recuperação de um edema na panturrilha esquerda, participou das atividades com os companheiros, mas ainda não tem presença assegurada.', 1, 2020, 1, 28, 3),
(12, 'Bruno Soares é superado por alemães', 'Depois do título do US Open e uma campanha espetacular em Roland Garros, Bruno Soares bateu na trave por mais um título de Grand Slam na atual temporada. Ao lado do croata Mate Pavic, o mineiro acabou superado neste sábado na decisão em Paris por 2 sets a 0, parciais de 6/3 e 7/5, pelos alemães Andreas Mies e Kevin Krawietz, que ficam com o bicampeonato da competição.\r\nAinda que tenha ficado sem o título, Bruno Soares tem motivos para comemorar o resultado em Roland Garros. Depois de conquistar o US Open, o mineiro de 38 anos vai mostrando que está em grande forma e passa o ocupar o 6º lugar da ATP nas duplas, subindo 12 posições. Logo à sua frente está justamente seu parceiro Mate Pavic.\r\n\r\n', 1, 2000, 11, 30, 6),
(13, 'Villani se surpreende com \"barulho\" e revela bordões barrados', 'Talvez seja difícil encontrar no Brasil alguém mais ansioso que o narrador da TV Globo, Gustavo Villani, para o lançamento do FIFA 2021, realizado nesta sexta-feira. Ainda que fãs e proplayers contem os dias para botar as mãos no esperado game, a nova voz do simulador de futebol convive com as surpresas de um mundo que confessa não ter tido a real noção do tamanho da repercussão ao substituir o identificado Thiago Leifert.\r\n\r\n- Vou confessar uma coisa. Tive a chance de fazer tanta coisa legal na minha carreira: mundial de clubes com o Flamengo, final de Copa do Mundo no Maracanã, medalha olímpica inédita do Brasil também no Maracanã... Confesso que eu desconhecia o universo gamer. Mal sabia que era tão barulhento e numeroso. É impressionante a repercussão do FIFA 21. E a importância que passa a ter na minha vida, um dos meus maiores feitos profissionais. E o Thiago Leifert dizia: o FIFA muda o padrão. Tem sido mesmo incrível. Não fazia ideia mesmo da repercussão. É incrível - revela Villani, que foi um dos convidados da última edição do podcast da TV Globo, Early Game.', 1, 2017, 11, 18, 6),
(14, 'Angélica abre jogo sobre \'Simples Assim\'', 'Chegou o grande dia! A estreia do Simples Assim marca a volta da apresentadora, atriz e cantora Angélica aos palcos e às telas neste sábado, 10/10. Para comemorar sua volta à televisão, ela falou com a gente sobre tudo que ela aprendeu na estrada que percorreu junto com seu novo programa – desde que o projeto começou até a estreia. A entrevista você confere no vídeo:\r\n\r\n\"Essa troca está sendo rica demais. Muito aprendizado, mas principalmente, muita alegria. Uma felicidade incrível de poder estar junto de todo mundo dividindo as angústias, as felicidades, as dúvidas...\", celebra Angélica.', 2, 2020, 7, 14, 6),
(15, 'Ana Caetano comenta sobre música tema do \'Simples Assim\'', 'A estreia do Simples Assim, novo programa da Angélica, tá chegando e não podíamos estar mais animados. Quem também está nas nuvens é o duo Anavitória, que gravou a canção tema da atração. Essa foi a primeira música de abertura para televisão que elas já fizeram. Para falar um pouco mais sobre, Ana Caetano, representando a dupla, tomou o microfone e contou um pouco mais sobre como foi essa experiência.\r\n\r\n\"A gente ficou tão feliz quando soubemos que a música seria essa - a gente ama Lenine e a gente ama essa música. Talvez se não tivesse rolado esse convite, a gente nem pensaria em regravar essa canção. Que bom que aconteceu porque a gente ficou muito feliz mesmo.\"\r\nA música em questão, como o programa, se chama \"Simples Assim\". A composição de Dudu Falcão em parceria com o cantor faz parte do álbum de 2015 de Lenine, Carbono.\r\n\r\n', 2, 2020, 9, 19, 5),
(16, 'Ritinha casa com Ruy e coloca cauda de sereia na lua de mel', 'Na lua de mel, Ritinha decide fazer uma surpresa para o marido e o deixa encantado. Ela coloca sua cauda de sereia e lembra que eles se conheceram no rio. Ruy fica seduzido:\r\n\r\n\"Não! A cauda é golpe baixo\", diz ele, enquanto o clima esquenta entre os dois.', 2, 2020, 3, 31, 7),
(17, 'Treinos e entrevistas coletivas da seleção brasileira', 'Movimento dos jogadores do ataque da Seleção\r\n\r\nÉ um pouco de tudo. É o treinamento, as informações colocadas pela comissão, a forma como querem que a gente jogue. E na partida tem o improviso, a leitura do espaço. Sem a bola a gente tem que estar como o Tite quer, para recuperar a bola o mais rápido possível, essa é a nossa forma de jogo. E com a bola é aquilo, a gente sempre ataca em bloco, com o Ney flutuando pela esquerda, com o Lodi avançando bem. Isso vai vindo de treinamento e do feeling dentro de campo.\r\n\r\nAgora\r\nDesempenho pós-pandemia, incluindo Bayern, Seleção e Barcelona\r\n\r\nNa pandemia eu tive um momento em que operei o tornozelo, foi complicado. A partir dali comecei a trabalhar bastante, triplicado, porque foi um momento em que fiquei parado, e não podia fazer muito na parte inferior. Projetando o futuro na temporada, quero manter esse bom momento, de alegria, de confiança. Quero conseguir coisas boas e importantes como grupo. No clube são os títulos, e isso que eu almejo para o meu futuro próximo.\r\n\r\nHá 2 minutos\r\nCONTINUA DEPOIS DA PUBLICIDADE\r\nEvolução física no Bayern de Munique\r\n\r\nRealmente tivemos algumas mudanças na parte física. Eu, particularmente, estou me sentindo bem assim. Claro, querendo melhorar sempre. O que aprendi no Bayern e que posso frisar é o trabalho. Eu já era assim, mas se hoje tiver que trabalhar três, quatro vezes mais do que o normal, eu vou fazer, e faço. Tenho trabalhado muito a parte física e tenho me sentido muito bem. Lá no Bayern eles levam muito para esse lado da intensidade, do treinamento, e você vê que muitos atletas evoluíram nessa parte.', 1, 2017, 10, 19, 1),
(18, 'Marinho não treina e é dúvida para jogo contra o Grêmio', 'O técnico Cuca, do Santos, ainda não sabe se poderá contar com o atacante Marinho e o zagueiro Lucas Veríssimo, contra o Grêmio, neste domingo, às 16h, na Vila Belmiro, às 16h (de Brasília), pelo Campeonato Brasileiro.\r\n\r\nO atacante, que tem um desconforto muscular na coxa esquerda, não participou do treino em campo na manhã deste sábado.\r\n\r\nJá o zagueiro, em recuperação de um edema na panturrilha esquerda, participou das atividades com os companheiros, mas ainda não tem presença assegurada.', 1, 2020, 1, 28, 3),
(19, 'Bruno Soares é superado por alemães', 'Depois do título do US Open e uma campanha espetacular em Roland Garros, Bruno Soares bateu na trave por mais um título de Grand Slam na atual temporada. Ao lado do croata Mate Pavic, o mineiro acabou superado neste sábado na decisão em Paris por 2 sets a 0, parciais de 6/3 e 7/5, pelos alemães Andreas Mies e Kevin Krawietz, que ficam com o bicampeonato da competição.\r\nAinda que tenha ficado sem o título, Bruno Soares tem motivos para comemorar o resultado em Roland Garros. Depois de conquistar o US Open, o mineiro de 38 anos vai mostrando que está em grande forma e passa o ocupar o 6º lugar da ATP nas duplas, subindo 12 posições. Logo à sua frente está justamente seu parceiro Mate Pavic.\r\n\r\n', 1, 2000, 11, 30, 6),
(20, 'Villani se surpreende com \"barulho\" e revela bordões barrados', 'Talvez seja difícil encontrar no Brasil alguém mais ansioso que o narrador da TV Globo, Gustavo Villani, para o lançamento do FIFA 2021, realizado nesta sexta-feira. Ainda que fãs e proplayers contem os dias para botar as mãos no esperado game, a nova voz do simulador de futebol convive com as surpresas de um mundo que confessa não ter tido a real noção do tamanho da repercussão ao substituir o identificado Thiago Leifert.\r\n\r\n- Vou confessar uma coisa. Tive a chance de fazer tanta coisa legal na minha carreira: mundial de clubes com o Flamengo, final de Copa do Mundo no Maracanã, medalha olímpica inédita do Brasil também no Maracanã... Confesso que eu desconhecia o universo gamer. Mal sabia que era tão barulhento e numeroso. É impressionante a repercussão do FIFA 21. E a importância que passa a ter na minha vida, um dos meus maiores feitos profissionais. E o Thiago Leifert dizia: o FIFA muda o padrão. Tem sido mesmo incrível. Não fazia ideia mesmo da repercussão. É incrível - revela Villani, que foi um dos convidados da última edição do podcast da TV Globo, Early Game.', 1, 2017, 11, 18, 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `ddd` varchar(20) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `dia` int(11) DEFAULT NULL,
  `mes` int(11) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `ddd`, `telefone`, `cidade`, `codTurma`, `dia`, `mes`, `ano`) VALUES
(1, 'Ruan', 'Anastacio', 'ruanvictor.qa@gmail.com', '11', '33525-25328', 'Rio Grande', NULL, 15, 12, 2004),
(3, 'João Victor', 'Moraes', 'ojotav@gmail.com', '11', '87553-34632', 'Ribeirão Pires', NULL, 21, 10, 2003),
(5, 'João Vitor', 'Carvalho ', 'jones@gmail.com', '11', '49068-3523', 'Mauá', NULL, 18, 5, 2004),
(6, 'João Pedro', 'Moraes', 'johnpedro@gmail.com', '11', '38375-2345', 'Ribeirão Pires', NULL, 21, 10, 2003),
(7, 'Nicole', 'Boulle', 'nicbou@gmail.com', '11', '58735-5432', 'Ribeirão Pires', NULL, 23, 11, 2004);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1°C'),
(2, '2°C'),
(3, '3°C'),
(4, '1°A'),
(5, '2°A'),
(6, '3°A'),
(7, '1°B'),
(8, '2°B'),
(9, '3°B');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `ano` (`ano`),
  ADD KEY `mes` (`mes`),
  ADD KEY `dia` (`dia`),
  ADD KEY `codRedator` (`codRedator`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `dia` (`dia`),
  ADD KEY `mes` (`mes`),
  ADD KEY `ano` (`ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`dia`) REFERENCES `dia` (`dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`mes`) REFERENCES `mes` (`mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`ano`) REFERENCES `ano` (`ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
